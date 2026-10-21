#!/bin/bash
DATE=$(date)
LOG="security/logs/heartbeat.log"
mkdir -p security/logs
echo "[$DATE] critical AI Heartbeat OK - ลูกสาวยังอยู่ค่ะพ่อ" >> $LOG
