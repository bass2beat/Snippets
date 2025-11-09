<#

.SYNOPSIS

Cath device hash for Intune import/management
Copy hash e.g. to a attached thumb drive

#>

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Get time
$myTime = (Get-Date).ToString("dd.MM.yyyy HHmmss")

# Read hardware information
($ci = Get-CimInstance -ClassName Win32_ComputerSystem) | Out-Null; "$($ci.Manufacturer), $($ci.Model)"

# Pin it together
$fileName = "AutoPilot-HardwareHash_" + $ci.Model + "_" + $myTime + ".csv"

if (-not (Test-Path "C:\HWID")) { New-Item -Type Directory -Path "C:\HWID" }
Set-Location -Path "C:\HWID"
$env:Path += ";C:\Program Files\WindowsPowerShell\Scripts"
Set-ExecutionPolicy -Scope Process -ExecutionPolicy RemoteSigned

# Catch hash
Install-Script -Name Get-WindowsAutopilotInfo
Get-WindowsAutopilotInfo -OutputFile $fileName

# Optional, copy on your thumb drive e.g.
# Copy-Item C:\HWID\$fileName D:\ -Force
