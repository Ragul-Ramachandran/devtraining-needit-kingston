@echo off

for /f "tokens=1 delims=" %%# in ('qprocess^|find /i /c /n "chrome"') do (
    set number=%%#
)

echo number of chromes: %number%
pause