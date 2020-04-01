.SYNOPSIS
  scanning for Ransonware

1-Enable / Check Syman tec Antivirus is running
2-Update SEP Definitions
3-Ensure the Server has the latest Windows Security Bundle / Patch (Mar 2020)
4-Disable all the Local Admin Account / Domain Admin Acc (not possible on Domain Controllers)
5- Audit Event 4665 / 4663
6-other toughts


SOLUTION
Minimum Scan Engine: 9.850
FIRST VSAPI PATTERN FILE: 14.920.05
FIRST VSAPI PATTERN DATE: 05 Apr 2019
VSAPI OPR PATTERN File: 14.921.00
VSAPI OPR PATTERN Date: 06 Apr 2019

Step 1

Before doing any scans, Windows 7, Windows 8, Windows 8.1, and Windows 10, Windowd Server 2012, Windowd server 2016, users must disable System Restore to allow full scanning of their computers.

Step 2

Note that not all files, folders, and registry keys and entries are installed on your computer during this malware's/spyware's/grayware's execution. This may be due to incomplete installation or other operating system conditions. If you do not find the same files/folders/registry information, please proceed to the next step.

Step 3

Identify and terminate files detected as Trojan.PS1.PCASTLE.B
[ Learn More ]

    Windows Task Manager may not display all running processes. In this case, please use a third-party process viewer, preferably Process Explorer, to terminate the malware/grayware/spyware file. You may download the said tool here.
    If the detected file is displayed in either Windows Task Manager or Process Explorer but you cannot delete it, restart your computer in safe mode. To do this, refer to this link for the complete steps.
    If the detected file is not displayed in either Windows Task Manager or Process Explorer, continue doing the next steps.

Step 4

Deleting Scheduled Tasks

The following {Task Name} - {Task to be run} listed should be used in the steps identified below:

    \Microsoft\windows\{MAC Address} - powershell -nop -ep bypass -e [malicious code from http://v.y6h.net/g?h{date of infection in the format 'yyMMdd'}]
    {MAC Address} - powershell -nop -ep bypass -e [malicious code from http://v.y6h.net/g?l{date of infection in the format 'yyMMdd'}]
    Credentials - powershell -nop -w hidden -ep bypass -f %Application Data%\Microsoft\cred.ps1
    \Microsoft\Windows\{random 4-8 characters} - %AppDataLocal%\{random 4-8 characters}.exe
    {random 4-8 characters} - %AppDataLocal%\run.vbs
    \Microsoft\windows\Bluetooths - powershell -nop -ep bypass -e {base64-encoded command}

For Windows 2000, Windows XP, and Windows Server 2003:

    Open the Windows Scheduled Tasks. Click Start>Programs>Accessories>
    System Tools>Scheduled Tasks.
    Locate each {Task Name} values listed above in the Name column.
    Right-click on the said file(s) with the aforementioned value.
    Click on Properties. In the Run field, check for the listed {Task to be run}.
    If the strings match the list above, delete the task. 

For Windows Vista, Windows 7, Windows Server 2008, Windows 8, Windows 8.1, and Windows Server 2012:

    Open the Windows Task Scheduler. To do this:
    • On Windows Vista, Windows 7, and Windows Server 2008, click Start, type taskschd.msc in the Search input field, then press Enter.
    • On Windows 8, Windows 8.1, and Windows Server 2012, right-click on the lower left corner of the screen, click Run, type taskschd.msc, then press Enter.
    In the left panel, click Task Scheduler Library.
    In the upper-middle panel, locate each {Task Name} values listed above in the Name column.
    In the lower-middle panel, click the Actions tab. In the Details column, check for the {Task to be run} string.
    If the said string is found, delete the task.

Step 5

Search and delete these files
[ Learn More ]
There may be some files that are hidden. Please make sure you check the Search Hidden Files and Folders checkbox in the "More advanced options" option to include all hidden files and folders in the search result.

    %AppDataLocal%\kkk1.log
    %AppDataLocal%\pp2.log
    %AppDataLocal%\333.log
    %AppDataLocal%\kk4.log
    %AppDataLocal%\kk5.log
    %AppDataLocal%\mn.exe
    %AppDataLocal%\{random 4-8 characters}.exe
    %AppDataLocal%\run.vbs
    %AppDataLocal%\ddd.exe
    %Application Data%\sign.txt
    %Application Data%\flashplayer.tmp
    %Application Data%\Microsoft\cred.ps1
    %User Startup%\FlashPlayer.lnk

Step 6

Scan your computer with your Trend Micro product to delete files detected as Trojan.PS1.PCASTLE.B. If the detected files have already been cleaned, deleted, or quarantined by your Trend Micro product, no further step is required. You may opt to simply delete the quarantined files. Please check the following Trend Micro Support pages for more information:
