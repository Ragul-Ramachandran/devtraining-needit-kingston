@echo off
Powershell.exe -executionpolicy remotesigned -File  E:\Script\test\first.ps1
Powershell.exe -executionpolicy remotesigned -File  E:\Script\test\second.ps1
pause
