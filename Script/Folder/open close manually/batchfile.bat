@echo off
Powershell.exe -executionpolicy remotesigned -File  E:\Script\Folder\openapp.ps1
Powershell.exe -executionpolicy remotesigned -File  E:\Script\Folder\closeapp.ps1
pause