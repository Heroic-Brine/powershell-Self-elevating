#Checks if script currently is administrator
pause
If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
#Starts the script as administrator
Start-Process powershell.exe $PSCommandPath -Verb runAs
exit
}