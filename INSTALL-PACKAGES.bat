@echo off
title LifeLink - Install All Packages
echo Installing root package...
call npm install
if errorlevel 1 goto error
echo Installing backend packages...
call npm --prefix server install
if errorlevel 1 goto error
echo Installing frontend packages...
call npm --prefix client install
if errorlevel 1 goto error
echo.
echo All frontend and backend packages installed successfully.
echo Run START-WEBSITE.bat to launch LifeLink.
pause
exit /b 0
:error
echo.
echo Installation failed. Make sure Node.js and npm are installed.
pause
exit /b 1
