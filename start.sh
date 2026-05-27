#!/bin/bash
echo "🚀 Starting Obelix Menu..."
echo ""

# Start backend
echo "▶ Starting backend on http://localhost:5000"
cd backend && npm run dev &
BACKEND_PID=$!

sleep 2

# Start frontend
echo "▶ Starting frontend on http://localhost:5173"
cd ../frontend && npm run dev &
FRONTEND_PID=$!

echo ""
echo "✅ Obelix Menu is running!"
echo "   Menu:      http://localhost:5173"
echo "   Dashboard: http://localhost:5173/dashboard"
echo "   Password:  admin123"
echo ""
echo "Press Ctrl+C to stop all servers"

wait $BACKEND_PID $FRONTEND_PID
