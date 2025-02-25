<#
.NAME
    Powershell_Do Something Remote.ps1

.SYNOPSIS
    Executes code on a remote system. 
    Add your code below "Do Something here" that needs to run on a remote client.

#>

# Rechner
$ComputerName = "1234"
 
$s = New-PSSession -ComputerName $ComputerName
 
Invoke-Command -Session $s -ScriptBlock `
{

# Do something here
# New-Item "C:\TestFolder" -ItemType Directory

reg query HKLM\SOFTWARE\WOW6432Node\xy\xy
reg query HKLM\SOFTWARE\xy\xy

}
Remove-PSSession $s
