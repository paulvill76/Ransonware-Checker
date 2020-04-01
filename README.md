Author: Praneeth Marella
Date: April 23 2017
Updated: September 10 2017
Description:

This is a simple powershell script that can copy specified files from a computer into a folder then zip them with a random 8 character password. The files that are copied are deleted from the source. Then the script emails the password and zip folder to a specified email (I suggest using Guerrilla Email.) Now to clean up the evidence the script deletes the folder files were copied to and the zip folder.
How to use:

    First open up the powershell script and modify it to include the necessary file paths that files need to be stolen from.

    Then specify the email that you want to use to send the password and zip folder.

    In order to run the script on a target computer the victim needs to run the .bat file so that it can bypass powershell permissions and policies.

    Now all you need is a target and instruct them in the email to download the .bat and .ps1 files and run the .bat on their computer.

Template e-mail:

Good Afternoon Sr.,

The file contains sensitive information so the file is encrypted. In order to read the report please download both the attachments. Then open and run the Expense-Report.bat file (first attachment) to unlock the Expense-Report.


Sincerely, Pablo -Active Direcotry - SME

Note: This is intended for educational purpose/use only

.SYNOPSIS
  scanning for Ransonware

1-Enable / Check Syman tec Antivirus is running
2-Update SEP Definitions
3-Ensure the Server has the latest Windows Security Bundle / Patch (Mar 2020)
4-Disable all the Local Admin Account / Domain Admin Acc (not possible on Domain Controllers)
5- Audit Event 4665 / 4663
6-other toughts

