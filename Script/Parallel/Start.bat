@echo off
echo Starting
start "First Script" /D C:\ "Powershell.exe" -executionpolicy remotesigned -File E:\Script\Parallel\first.ps1

start "Second Script" /D C:\ "Powershell.exe" -executionpolicy remotesigned -File E:\Script\Parallel\second.ps1
echo Done
pause


