@echo off
title Test Dashboard KeuTrack
echo ========================================
echo    Testing KeuTrack Dashboard
echo ========================================
echo.
echo [1/3] Starting backend server...
echo.
cd backend
start "KeuTrack Backend" cmd /k "npm install && npm start"
echo.
echo [2/3] Waiting for server to start...
timeout /t 3 > nul
echo.
echo [3/3] Opening dashboard in browser...
echo.
echo Backend: http://localhost:3001
echo Dashboard: http://localhost:3001/dashboard.html
echo.
start "" "http://localhost:3001/dashboard.html"
echo.
echo ========================================
echo    Dashboard opened in browser
echo ========================================
echo.
echo Backend is running in a separate window.
echo Close this window when done testing.
echo.
pause
