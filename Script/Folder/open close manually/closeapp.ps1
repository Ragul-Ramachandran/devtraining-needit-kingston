Get-Process | ? { $_.CloseMainWindow()} | where ProcessName -eq notepad

