
<#

.SYNOPSIS
Intune | Run-CheckSync.ps1
Erstellt: 9/2025 DPS

.DESCRIPTION
Prüft auf Event-ID zum Intune MDM-Sync. Event-ID 209 wird in einer Schleife ausgelesen. Sleep-Timer kann unten angepasst werden. 

.EXAMPLE
PS> .\Run-CheckSync.ps1

#>


$start = Get-Date
$duration = [TimeSpan]::FromHours(1)

Write-Host "Skript bleibt bis zum manuellen Abbruch in der Schleife" -ForegroundColor Red -BackgroundColor Yellow
Write-Host "Lese Events.." -ForegroundColor Red -BackgroundColor Yellow

while ((Get-Date) -lt $start.Add($duration)) {
    Get-WinEvent -MaxEvents 5 -FilterHashtable @{
        LogName = 'Microsoft-Windows-DeviceManagement-Enterprise-Diagnostics-Provider/Sync'
        Id      = 209
    }
	
    Start-Sleep -Seconds 15
    Write-Host "-----------------" + $myDatum(Get-Date)
}
