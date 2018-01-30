get-process | where-object {$_.mainwindowhandle -ne 0} | select-object name, mainwindowtitle
get-process | where-object {$_.mainwindowhandle -ne 0} | select-object name, mainwindowtitle