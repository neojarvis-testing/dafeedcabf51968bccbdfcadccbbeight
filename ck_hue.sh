#!/bin/bash
echo "🔍 Checking Hue..."

hue runserver 0.0.0.0:8081

# CLI: No CLI check
# Web UI
echo "[🌐] Hue Web UI: http://localhost:8081"
