Write-Host "***************Windows Application Script*******************"
$MainOption= Read-Host "1. Display App, 2. Random testing"
$flag=0
do
{
switch ($MainOption)
{
1
{
$option= Read-Host "1. All App, 2. Desired runnig duration app"
switch ($option)
{
1
{
gps | ? {$_.mainwindowtitle.length -ne 0} | Sort-Object CPU  -desc
}
2
{
$time = Read-Host "Enter the Min Sec of running application for our operation"
gps | ? {$_.mainwindowtitle.length -ne 0} | where CPU -gt $time
}
default{"Invalid Option"}
}
}
2
{
$option2= read-host " 1. Just check, 2. Check with running duration"
switch($option2)
{
1
{
$list = gps | ? {$_.mainwindowtitle.length -ne 0}
$input= Read-Host("enter your choice")
if($list.ProcessName -eq $input)
{
 Write-Host ("True, Yeah, The $input application is currently running.... with your specified running duration....")
}
else{
Write-Host "Not running"
}
}
2
{
$time = read-host "Enter the time "
$list = gps | ? {$_.mainwindowtitle.length -ne 0} | where CPU -gt $time

$input= Read-Host("enter your choice")
if($list.ProcessName -eq $input)
{
 Write-Host ("True, Yeah, The $input application is currently running.... with your specified running duration....")
}
else
{
Write-host ("False, the $input application is not running ")
}
}
default{"Invalid Option"}
}
}
default{"Invalid Option"}
}
}while($flag -ne 1)



