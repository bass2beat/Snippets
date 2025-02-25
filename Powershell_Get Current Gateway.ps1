<#

.NAME
    Powershell_Get Current Gateway.ps1

.SYNOPSIS
    Reads the current gateway on network adapters.

#>

Get-NetIPConfiguration |
select InterfaceAlias, @{n="Gateway";e={$_.IPv4DefaultGateway.Nexthop}}
