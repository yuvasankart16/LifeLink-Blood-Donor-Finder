@echo off
title Blood Donor Finder - MERN
echo.
echo ==========================================
echo       BLOOD DONOR FINDER - MERN
echo ==========================================
echo.

where node >nul 2>nul
if errorlevel 1 (
  echo Node.js is not installed.
  echo Install Node.js LTS from https://nodejs.org/
  pause
  exit /b 1
)

echo Installing root dependencies...
call npm install
if errorlevel 1 (
  echo Root dependency installation failed.
  pause
  exit /b 1
)

echo Installing frontend and backend dependencies...
call npm run install-all
if errorlevel 1 (
  echo Project dependency installation failed.
  pause
  exit /b 1
)

echo.
echo Starting frontend and backend...
echo Website on this laptop: http://localhost:5173
echo API on this laptop:     http://localhost:5000
echo.
call npm run dev
pause

