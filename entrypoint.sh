#!/bin/sh
set -e
# Railway sets PORT dynamically; Flask reads FLASK_PORT
export FLASK_PORT="${PORT:-8080}"
export FLASK_DEBUG="false"
echo "Starting MiroFish on port $FLASK_PORT..."
exec uv run --project backend python backend/run.py
