@echo off
echo ========================================
echo    KeuTrack - Starting Project
echo ========================================
echo.

echo [1/3] Installing backend dependencies...
cd backend
npm install
if %errorlevel% neq 0 (
    echo ERROR: Failed to install dependencies
    pause
    exit /b 1
)

echo.
echo [2/3] Starting backend server on port 3001...
start "KeuTrack Backend" cmd /k "npm start"

echo.
echo [3/3] Backend is starting...
echo.
echo ========================================
echo    Access Instructions:
echo ========================================
echo.
echo Website: http://localhost:3001
echo Backend API: http://localhost:3001/api
echo.
echo To access website:
echo 1. Open browser and go to: http://localhost:3001
echo 2. Or open dashboard.html directly in browser
echo 3. Or use Python server: python -m http.server 8080
echo.
echo ========================================
echo.
echo Backend is running in a separate window.
echo Close this window when done.
echo.
pause
