<#

.NAME
    Powershell_OneLiners.ps1

.SYNOPSIS
    Check purpose above each oneliner. Use ´em on your own risk.

#>
# Show FQDN Hostname
$myFQDN=(Get-WmiObject win32_computersystem).DNSHostName+"."+(Get-WmiObject win32_computersystem).Domain ; Write-Host $myFQDN


# Show all System-Variables
[environment]::GetEnvironmentVariables( )


# Display local connections, ports and process owning the connection
Get-NetTCPConnection | Select-Object LocalAddress, LocalPort, RemoteAddress, RemotePort, State, OwningProcess, @{Name="Process";Expression={(Get-Process -Id $_.OwningProcess).ProcessName}} | ogv


# Display all Scheduled tasks and last runtime:
Get-ScheduledTask | Select *,@{n='LastRunTime';e={$script:info=Get-ScheduledTaskInfo -InputObject $_;$script:info | Select -expand LastRunTime -EA 0}}


# Download latest version SQL Server Management Studio
$op = $ProgressPreference ; $ProgressPreference = 0 ; iwr https://aka.ms/ssmsfullsetup -OutFile ssmsfullsetup.exe ; $ProgressPreference = $op ; ls c:\<YourFolderOfChoice>\ssmsfullsetup.exe|select -expand versioninfo


# Change screen resolution on a HyperV Ubuntu linux machine (run command on host, change VM Name "Ubuntu" to your VM as shown in HyperV Manager)
set-vmvideo Ubuntu -horizontalresolution:3840 -verticalresolution:2160 -resolutiontype single


# Show running scheduled tasks
(get-scheduledtask).where({$_.state -eq 'running'})


# Show last boot time
Get-WmiObject win32_operatingsystem |select @{Name="Last Boot Time"; Expression={$_.ConvertToDateTime($_.LastBootUpTime)}}, PSComputerName


# Find admin shares
Gwmi Win32_Share|%{"\\$($_|% P*e)\$($_.Name)"}


# List all installed applications
Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | Format-Table –AutoSize


