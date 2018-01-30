$list=gps | ? {$_.mainwindowtitle.length -ne 0}


$Process=Get-Process | Select-Object id name

i=0
ForEach($tmp in $Process)
{
j=0
while(j< $list.count)
{
if( $list[j] -eq $tmp )
Get-Process | Sort-Object CPU -desc | Select-Object -first 10
#Get-Process | Select-Object ProcessName -eq $list

j++
}
i++
}

    