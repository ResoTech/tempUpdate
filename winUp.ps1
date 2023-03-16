#Set policy unrestricted
Set-ExecutionPolicy -ExecutionPolicy Unrestricted


Install-Module -Name PSWindowsUpdate -Force

# Define output file path
$OutputFile = "C:\resolveUpdates.txt"

# Check for updates
$Updates = Get-WUInstall

# Install updates
Get-WindowsUpdate -install -acceptall 

#message user
$msg = "Scheduled Maintenance today! Save all your work before the computer Restarts 8 hours from now!"
Invoke-Expression "cmd.exe /c msg * $msg"

#Reboot 8 hours later
shutdown /r /t 28800
