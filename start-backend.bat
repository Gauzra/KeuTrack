@echo off
echo ========================================
echo    Starting KeuTrack Backend Server
echo ========================================
echo.
echo Make sure you have Node.js installed
echo Backend will run on http://localhost:3001
echo.
cd backend
echo Installing dependencies...
npm install
echo.
echo Starting server on port 3001...
node server.js
pause
