<#

.NAME
    Powershell_List installed updates.ps1

.SYNOPSIS
    Reads all installed Windows updates with KB and channel.

#>

$wu = new-object -com "Microsoft.Update.Searcher"
$totalupdates = $wu.GetTotalHistoryCount()
$all = $wu.QueryHistory(0,$totalupdates)
$OutputCollection= @()
Foreach ($update in $all)
{
$string = $update.title
$Regex = "KB\d*"
$KB = $string | Select-String -Pattern $regex | Select-Object {$.Matches }
$output = New-Object -TypeName PSobject
$output | add-member NoteProperty "HotFixID" -value $KB.‘ $.Matches ‘.Value
$output | add-member NoteProperty "Title" -value $string
$OutputCollection += $output
}
$OutputCollection | Sort-Object HotFixID | Format-Table -AutoSize
Write-Host "$($OutputCollection.Count) Updates Found"
