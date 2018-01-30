Write-Host "***************Windows Application Script*******************"

$flag=1
do
{
write-host "1. Display all running App, 
					2. Display running App with specified duration,
					3. Check the desired App is currently running or not, 
					4. Check the desired App is currently running or not, and with specified duration"
$Option= Read-Host "Enter your choice :"
switch ($Option)
{
1
{
write-host "***Running Application***"
gps | ? {$_.mainwindowtitle.length -ne 0} | Sort-Object CPU  -desc
}
2
{
$time = Read-Host "Enter the duration(Seconds)"
Write-host " ***Running Application, with the specified duration****"
gps | ? {$_.mainwindowtitle.length -ne 0} | where CPU -gt $time
}
3
{
$list = gps | ? {$_.mainwindowtitle.length -ne 0}
$input= Read-Host("Enter the Application name ")
if($list.ProcessName -eq $input)
{
 Write-Host ("True, Yeah, The $input application is currently running....")
 gps | ? {$_.mainwindowtitle.length -ne 0} | where ProcessName -eq $input
}
else{
Write-Host "False, $input Application is not running"
}
}
4
{
$time = read-host "Enter the duration(Seconds) "
$list = gps | ? {$_.mainwindowtitle.length -ne 0} | where CPU -gt $time

$input= Read-Host("Enter your Application Name")
if($list.ProcessName -eq $input)
{
 Write-Host ("True, Yeah, The $input application is currently running.... with your specified running duration....")
gps | ? {$_.mainwindowtitle.length -ne 0} | where ProcessName -eq $input |  where CPU -gt $time
 }
else
{
Write-host ("False, the $input application is not running with the specified duration")
}
}
}
$flag = read-host "press 1 for continue"
}while($flag -eq 1)



