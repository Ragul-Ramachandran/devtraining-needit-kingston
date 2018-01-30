@echo off
echo Starting
start "First Script" /D C:\ "Powershell.exe" -executionpolicy remotesigned -File E:\Script\test\first.ps1

start "Second Script" /D C:\ "Powershell.exe" -executionpolicy remotesigned -File E:\Script\test\second.ps1
echo Done
pause


