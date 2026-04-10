#!/bin/sh
set -e
export FLASK_PORT="${PORT:-8080}"
export FLASK_DEBUG="false"
echo "[entrypoint] PORT=$PORT → FLASK_PORT=$FLASK_PORT"
echo "[entrypoint] Starting Flask..."
exec /app/backend/.venv/bin/python /app/backend/run.py
