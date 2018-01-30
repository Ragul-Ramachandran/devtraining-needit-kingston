#To stop the script assign $flag=0, To Start the loop assign $flag=1

$flag = 0
for(;;) {
if($flag -eq 1)
{
 E:\Script\Close\closeapp.ps1
 Start-Sleep 1
}
else{
exit
}
}