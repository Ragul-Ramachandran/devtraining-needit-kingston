#Dear PowerShell…

#Here's my list of users

#ForEach (user in that list)

#{

#disable their log on ability in Active Directory

#}

$name = "r" , "s", "e" , "w", "t"
$count = 0
foreach($na in $name)
{
$count+=1
write-host " $na"
}
Write-Host " count is $count"

