#gps | ? {$_.mainwindowtitle.length -ne 0} | select name, mainwindowtitle > E:\Script\TaskAppList
gps | ? {$_.mainwindowtitle.length -ne 0} | select name, mainwindowtitle 
Get-Process | where {$_.mainWindowTitle} | Format-Table id, name, mainwindowtitle -autosize
    