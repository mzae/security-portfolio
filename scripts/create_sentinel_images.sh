#!/bin/bash

# ==========================================================
# Microsoft Sentinel Image Placeholder Creator
# Creates image placeholders for the Microsoft Sentinel project
# ==========================================================

set -e

IMG_DIR="assets/img/cloud-security/sentinel"

echo "========================================="
echo " Creating Microsoft Sentinel image folder"
echo "========================================="

mkdir -p "$IMG_DIR"

touch "$IMG_DIR/architecture.png"

touch "$IMG_DIR/task1-log-analytics-workspace.png"
touch "$IMG_DIR/task2-sentinel-deployment.png"
touch "$IMG_DIR/task3-data-connectors.png"
touch "$IMG_DIR/task4-security-incidents.png"
touch "$IMG_DIR/task5-kql-queries.png"
touch "$IMG_DIR/task6-threat-hunting.png"
touch "$IMG_DIR/task7-automation-rules.png"

echo
echo "Image placeholders created:"
echo

ls -1 "$IMG_DIR"

echo
echo "Done!"
