Import-Module ActiveDirectory

write-output "" 

write-output "This script allows to copy a user's group and copy it to other user, the script collect information from the member of tab."

write-output ""
 
$srcUser = Read-Host "Please Enter the alias name of the source user " 
$destUser = Read-Host "Please Enter the alias name of the Destination user " 

foreach ($group in (Get-ADUser -Identity $srcUser -Properties MemberOf).MemberOf) {   Add-ADGroupMember -Identity $group -Members $destUser; }