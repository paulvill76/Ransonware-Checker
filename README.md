# Ransonware-Checker
Ransonware-Checker

#Requires -Version 3.0
#requires -Module ActiveDirectory

<#
.SYNOPSIS
  scanning for Ransonware

1-Enable / Check Syman tec Antivirus is running
2-Update SEP Definitions
3-Ensure the Server has the latest Windows Security Bundle / Patch (Mar 2020)
4-Disable all the Local Admin Account / Domain Admin Acc (not possible on Domain Controllers)
5- Audit Event 4665 / 4663
6-other toughts

.DESCRIPTION
	output can be PowerShell, plain text or HTML.
	
Open a Command Prompt window as an administrator.

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

1-Enable / Check Syman tec Antivirus is running

2-Update SEP Definitions

3-Ensure the Server has the latest Windows Security Bundle / Patch (Mar 2020)

4-Disable all the Local Admin Account / Domain Admin Acc (not possible on Domain Controllers)

5- Audit Event 4665 / 4663
