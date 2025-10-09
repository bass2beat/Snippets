<#

.SYNOPSIS
Keep Microsoft Teams green/available as long as you need. Found this snippet somewhere on the web.
Run this code in your (Windows user profile installed) Microsoft Visual Studio Code.

.DESCRIPTION
This script presses NumLock-key twice in a loop to keep your screen alive if teams is found as a running process.

#>

while ($true) {
    try {
        Get-Process -Name 'ms-teams' -ErrorAction stop | Out-Null
        Write-Host ("{0} - Process found..." -f $(get-date)) -ForegroundColor Green
        $wshell = New-Object -ComObject wscript.shell
        $wshell.sendkeys("{NUMLOCK}{NUMLOCK}")
        Clear-Host
        Write-Host ("{0} - PressedKey. Waiting for 60 seconds" -f $(get-date)) -ForegroundColor Green
        Start-Sleep -Seconds 60          
    }
    catch {
        Write-Warning ("{0} - Process not found. Waiting..." -f $(get-date))
        Start-Sleep -Seconds 15
    }
}
