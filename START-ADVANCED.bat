@echo off
start "LifeLink Server" cmd /k "cd server && npm install && npm start"
timeout /t 3 >nul
start "LifeLink Client" cmd /k "cd client && npm install && npm run dev"
timeout /t 5 >nul
start http://localhost:5173
