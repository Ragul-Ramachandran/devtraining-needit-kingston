$list = gps | ? {$_.mainwindowtitle.length -ne 0}
#$input= Read-Host("Enter the Application name ")
if($list.ProcessName -eq "notepad")
{
Start-Sleep 10
Get-Process | where ProcessName -eq notepad |  Foreach-Object { $_.CloseMainWindow() }
}




