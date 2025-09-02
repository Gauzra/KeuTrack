#!/bin/bash
echo "========================================"
echo "    KeuTrack - Starting Project"
echo "========================================"
echo ""

echo "[1/3] Installing backend dependencies..."
cd backend
npm install
if [ $? -ne 0 ]; then
    echo "ERROR: Failed to install dependencies"
    exit 1
fi

echo ""
echo "[2/3] Starting backend server on port 3001..."
echo ""
echo "========================================"
echo "    Access Instructions:"
echo "========================================"
echo ""
echo "Website: http://localhost:3001"
echo "Backend API: http://localhost:3001/api"
echo ""
echo "To access website:"
echo "1. Open browser and go to: http://localhost:3001"
echo "2. Or open dashboard.html directly in browser"
echo "3. Or use Python server: python3 -m http.server 8080"
echo ""
echo "========================================"
echo ""
echo "Starting backend server..."
echo "Press Ctrl+C to stop"
echo ""

npm start
