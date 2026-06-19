#!/usr/bin/env bash

set -euo pipefail

echo "[+] Building Portfolio Image Structure"

mkdir -p assets/img

mkdir -p assets/img/rbac
mkdir -p assets/img/storage-security
mkdir -p assets/img/network-segmentation
mkdir -p assets/img/azure-firewall

mkdir -p assets/img/sentinel
mkdir -p assets/img/threat-hunting
mkdir -p assets/img/incident-response
mkdir -p assets/img/malware-analysis

echo "[+] Folder structure created"

REPORT="assets/img/image_inventory.txt"

echo "Portfolio Image Inventory" > "$REPORT"
echo "Generated: $(date)" >> "$REPORT"
echo "" >> "$REPORT"

echo "[+] Searching for screenshots..."

find "$HOME" -type f \
\( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.gif" \) \
2>/dev/null | sort > /tmp/all_images.txt

COUNT=$(wc -l < /tmp/all_images.txt)

echo "Total images found: $COUNT" >> "$REPORT"
echo "" >> "$REPORT"

cat /tmp/all_images.txt >> "$REPORT"

echo
echo "[+] Inventory saved:"
echo "    $REPORT"
echo

echo "[+] Suggested project folders:"
echo
echo "assets/img/rbac/"
echo "assets/img/storage-security/"
echo "assets/img/network-segmentation/"
echo "assets/img/azure-firewall/"
echo "assets/img/sentinel/"
echo "assets/img/threat-hunting/"
echo "assets/img/incident-response/"
echo "assets/img/malware-analysis/"
echo

echo "[+] Example moves:"
echo
echo "mv screenshot1.png assets/img/rbac/"
echo "mv screenshot2.png assets/img/network-segmentation/"
echo

echo "[+] Done"
