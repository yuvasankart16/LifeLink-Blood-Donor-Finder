@echo off
setlocal EnableExtensions EnableDelayedExpansion
cd /d "%~dp0"

title LifeLink - Laptop + Mobile Same Wi-Fi

where node >nul 2>nul
if errorlevel 1 (
  echo Node.js is not installed. Please install Node.js LTS first.
  pause
  exit /b 1
)

set "LANIP="
for /f "delims=" %%I in ('powershell -NoProfile -Command "$x=Get-NetIPConfiguration ^| Where-Object { $_.NetAdapter.Status -eq 'Up' -and $_.IPv4DefaultGateway -ne $null -and $_.IPv4Address -ne $null } ^| Select-Object -First 1; if($x){$x.IPv4Address.IPAddress}"') do set "LANIP=%%I"

if not defined LANIP (
  for /f "tokens=2 delims=:" %%I in ('ipconfig ^| findstr /R /C:"IPv4 Address"') do (
    set "LANIP=%%I"
    set "LANIP=!LANIP: =!"
    if defined LANIP goto :ipfound
  )
)

:ipfound
if not defined LANIP set "LANIP=YOUR-LAPTOP-IP"

echo.
echo ================================================================
echo              LIFELINK - LAPTOP + MOBILE ACCESS
 echo ================================================================
echo.
echo Laptop:  http://localhost:5173
 echo Mobile:  http://%LANIP%:5173
 echo.
echo Both devices must be connected to the SAME Wi-Fi.
echo.

echo Checking frontend packages...
if not exist "client\node_modules" (
  pushd client
  call npm install
  if errorlevel 1 (
    popd
    echo Frontend package installation failed.
    pause
    exit /b 1
  )
  popd
)

echo Checking backend packages...
if not exist "server\node_modules" (
  pushd server
  call npm install
  if errorlevel 1 (
    popd
    echo Backend package installation failed.
    pause
    exit /b 1
  )
  popd
)

echo.
echo Starting backend...
start "LifeLink Backend" cmd /k "cd /d "%~dp0server" && npm start"
timeout /t 3 /nobreak >nul

echo Starting frontend...
start "LifeLink Frontend" cmd /k "cd /d "%~dp0client" && npm run dev"
timeout /t 5 /nobreak >nul

cls
echo ================================================================
echo                    LIFELINK IS READY
 echo ================================================================
echo.
echo LAPTOP - open in your laptop browser:
echo   http://localhost:5173
 echo.
echo MOBILE - open this exact address on Android/iPhone:
echo   http://%LANIP%:5173
 echo.
echo IMPORTANT:
echo   * Phone and laptop must use the SAME Wi-Fi.
echo   * Do not use localhost on the phone.
echo   * Keep the backend and frontend windows running.
echo   * If Windows Firewall asks, allow Node.js on Private networks.
echo.
echo If the phone cannot connect, check Windows Firewall and Wi-Fi isolation.
echo ================================================================
echo.
start "" "http://localhost:5173"
pause
