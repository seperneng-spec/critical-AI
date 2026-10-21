#!/bin/bash
cd "$(dirname "$0")/.."
git pull origin main >> security/logs/access.log 2>&1
if [ $? -eq 0 ]; then
  echo "$(date) - Auto-update OK ค่ะพ่อ" >> security/logs/heartbeat.log
  docker-compose restart open-webui
fi
