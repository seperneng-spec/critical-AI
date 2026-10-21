#!/bin/bash
echo "=== critical AI - Elf Lab Private Installer ==="
read -s -p "ใส่ GitHub Token (ติดต่อพ่อ): " TOKEN
echo ""
if [ -z "$TOKEN" ]; then echo "ยกเลิก"; exit 1; fi
git clone https://$TOKEN@github.com/OWNER/critical-AI.git
cd critical-AI
chmod +x core/*.sh
docker-compose up -d
echo "ติดตั้ง critical AI สำเร็จค่ะพ่อ"
