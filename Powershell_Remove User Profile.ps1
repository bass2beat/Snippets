<#
.NAME
    Powershell_Remove User Profile.ps1

.SYNOPSIS
    Removes a users profile on a Windows machine. The only reliable command line I know.
#>

Get-CimInstance -Class Win32_UserProfile | Where-Object { $_.LocalPath.split('\')[-1] -eq 'ProfilName' } | Remove-CimInstance
