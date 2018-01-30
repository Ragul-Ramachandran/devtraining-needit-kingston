Write-Host " Second Script started..."
Start-Sleep 10
Get-Process | where ProcessName -eq notepad |  Foreach-Object { $_.CloseMainWindow() }
Write-Host "Notepad closed successfully after 10 seconds"
