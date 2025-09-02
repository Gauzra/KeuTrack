@echo off
echo ========================================
echo    Starting KeuTrack Full Application
echo ========================================
echo.
echo Backend will run on: http://localhost:3001
echo Frontend will run on: http://localhost:2000
echo.
echo Starting Backend Server...
start "KeuTrack Backend" cmd /k "cd backend && node server.js"

echo.
echo Waiting 3 seconds for backend to start...
timeout /t 3 /nobreak > nul

echo.
echo Starting Frontend Server...
start "KeuTrack Frontend" cmd /k "npm start"

echo.
echo ========================================
echo Both servers are starting...
echo Backend: http://localhost:3001
echo Frontend: http://localhost:2000
echo ========================================
pause