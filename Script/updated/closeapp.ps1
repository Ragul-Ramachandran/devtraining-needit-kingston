$AppName = Read-Host "Enter the Application, you want to OPEN"
Start-Process -FilePath "$AppName" 

Start-Sleep 5

$AppList = gps | ? {$_.mainwindowtitle.length -ne 0} | where ProcessName -eq $AppName

write-host "Closing App"
Get-Process | where ProcessName -eq $AppName |  Foreach-Object { $_.CloseMainWindow() }