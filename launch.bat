@echo off
title Booty Bay Fishing
echo.
echo   Booty Bay Fishing — Starting...
echo.
echo   Make sure XAMPP MySQL is running first!
echo   Then double-click this.
echo.
start /B /WAIT realmd.exe
start /B mangosd.exe
echo.
echo   Server running! Launch WoW 1.12.1 and log in.
echo   IP: 127.0.0.1
echo   Username: admin
echo   Password: admin
echo.
echo   Close this window to shut down the server.
echo.
pause
