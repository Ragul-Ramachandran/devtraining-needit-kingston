#Powershell Script to close the opened application after 15 seconds
$OpenedTime = Read-Host "Enter the minimun Opened application duration"
$AppList = gps | ? {$_.mainwindowtitle.length -ne 0} | where CPU -lt $OpenedTime
$AppList
write-host "Closing App"
foreach ( $name in $AppList)
{
$tmp=$name.ProcessName
Get-Process | where ProcessName -eq $tmp |  Foreach-Object { $_.CloseMainWindow() }
Write-Host " $tmp closed successfully"
}