#!/bin/bash

# =====================================================
# Microsoft Defender for Cloud
# Image Placeholder Generator
# Security Portfolio
# Author: Daniel Wanjama
# =====================================================

set -e

PROJECT_DIR="assets/img/cloud-security/defender-for-cloud"

echo "=============================================="
echo " Creating Microsoft Defender for Cloud Images "
echo "=============================================="
echo

# Create directory if it doesn't exist
mkdir -p "$PROJECT_DIR"

# Create placeholder image files
touch "$PROJECT_DIR/architecture.png"

touch "$PROJECT_DIR/task1-defender-dashboard.png"
touch "$PROJECT_DIR/task2-security-recommendations.png"
touch "$PROJECT_DIR/task3-enable-defender-plans.png"
touch "$PROJECT_DIR/task4-secure-score.png"
touch "$PROJECT_DIR/task5-protection-validation.png"

echo
echo "Image placeholders created successfully."
echo
echo "Location:"
echo "  $PROJECT_DIR"
echo
echo "Files:"
echo

ls -1 "$PROJECT_DIR"

echo
echo "Done."
