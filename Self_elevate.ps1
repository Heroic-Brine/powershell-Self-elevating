#find ud af om man er administrator lige nu
pause
If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
#starer dette script som administrator, kan modificeres til at køre et andet script som administartor
Start-Process powershell.exe $PSCommandPath -Verb runAs
exit
}