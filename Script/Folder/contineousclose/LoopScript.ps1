#To stop the script assign $flag=0, To Start the loop assign $flag=1

$flag = 1

for(;;) 
{
	if($flag -eq 1)
		{
		$list = gps | ? {$_.mainwindowtitle.length -ne 0}

		if($list.ProcessName -eq "notepad")
			{
			Start-Sleep 2
			Get-Process | where ProcessName -eq notepad |  Foreach-Object { $_.CloseMainWindow() }
			}
		}
	else{
		exit
		}
    Start-Sleep 1
}