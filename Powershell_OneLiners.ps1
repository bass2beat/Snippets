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




