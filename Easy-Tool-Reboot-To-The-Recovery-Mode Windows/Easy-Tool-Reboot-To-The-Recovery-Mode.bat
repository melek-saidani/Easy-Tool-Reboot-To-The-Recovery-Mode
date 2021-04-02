@echo off
TITLE Easy Tool Reboot To The Recovery Mode
color 22
Mode con: COLS=75 LINES=40
echo.
echo     ******* ***********                    ******  ********
echo     ****             1:  Enable USB debugging mode     ****
echo     *******************************************************

echo.             
echo.
taskkill /f /im "adb.exe" >nul 2>nul
cd /d %~dp0adb
adb kill-server
adb start-server
echo.
echo   *******  Wait for the device
adb devices
echo.
pause
echo.

echo     ******* ***********                    ****** ********
echo     ****             2:  Reboot in recovery            ****
echo     ******************************************************

adb reboot recovery

echo.             
echo     ******* ***********                    ****** ********
echo     ****             3: SUCCESS                      ****
echo     ******************************************************
echo.                         
ECHO.  Press any key to exit ...
pause  >NUL
EXIT

