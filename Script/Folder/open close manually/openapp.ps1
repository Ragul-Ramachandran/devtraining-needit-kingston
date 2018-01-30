#Powershell script to open the application

$AppName = Read-Host "Enter the Application, you want to OPEN"

Start-Process -FilePath "$AppName" 