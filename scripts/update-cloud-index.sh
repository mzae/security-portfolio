#!/bin/bash

# ==========================================================
# Cloud Security Portfolio Index Updater
# Updates cloud/index.html without affecting other sections
# ==========================================================

set -e

FILE="cloud/index.html"

if [ ! -f "$FILE" ]; then
    echo "Error: $FILE not found."
    exit 1
fi

cp "$FILE" "${FILE}.bak"

echo "Backup created:"
echo "  ${FILE}.bak"
echo

# ----------------------------------------------------------
# Update page title
# ----------------------------------------------------------

sed -i \
's|<h1>Cloud Security Portfolio</h1>|<h1>Cloud Security Projects</h1>|' \
"$FILE"

# ----------------------------------------------------------
# Update introduction paragraph
# ----------------------------------------------------------

perl -0777 -i -pe 's|<p>\s*Cloud security projects covering identity, networking,\s*storage protection, and Azure security controls\.\s*</p>|<p>\nEnterprise cloud security projects demonstrating Azure networking,\nidentity management, cloud governance, workload protection,\nand Microsoft security technologies.\n</p>|gs' \
"$FILE"

# ----------------------------------------------------------
# Insert Microsoft Defender for Cloud card
# (After Azure Firewall card)
# ----------------------------------------------------------

perl -0777 -i -pe 's|(<div class="card">\s*<h3>Azure Firewall</h3>\s*<a href="azure-firewall\.html">View Project</a>\s*</div>)|$1\n\n<div class="card">\n<h3>Microsoft Defender for Cloud</h3>\n<p>Improve cloud security posture using CSPM, Secure Score, and workload protection.</p>\n<a href="defender-for-cloud.html">View Project</a>\n</div>|gs' \
"$FILE"

# ----------------------------------------------------------
# Add descriptions to existing cards
# ----------------------------------------------------------

perl -0777 -i -pe '

s|<h3>Azure RBAC Security</h3>\s*<a href="rbac-security\.html">View Project</a>|<h3>Azure RBAC Security</h3>\n<p>Implement least-privilege access using Azure Role-Based Access Control.</p>\n<a href="rbac-security.html">View Project</a>|gs;

s|<h3>AKS & Azure Container Registry Security</h3>\s*<a href="aks-security\.html">View Project</a>|<h3>AKS & Azure Container Registry Security</h3>\n<p>Secure containerized workloads using Azure Kubernetes Service and Azure Container Registry.</p>\n<a href="aks-security.html">View Project</a>|gs;

s|<h3>Azure Storage Security</h3>\s*<a href="storage-security\.html">View Project</a>|<h3>Azure Storage Security</h3>\n<p>Protect Azure Storage using Service Endpoints and Network Security Groups.</p>\n<a href="storage-security.html">View Project</a>|gs;

s|<h3>Network Segmentation</h3>\s*<a href="network-segmentation\.html">View Project</a>|<h3>Network Segmentation</h3>\n<p>Implement defense-in-depth using Network Security Groups and Application Security Groups.</p>\n<a href="network-segmentation.html">View Project</a>|gs;

s|<h3>Azure Firewall</h3>\s*<a href="azure-firewall\.html">View Project</a>|<h3>Azure Firewall</h3>\n<p>Secure Azure networks through centralized firewall policies and traffic inspection.</p>\n<a href="azure-firewall.html">View Project</a>|gs;

' "$FILE"

echo
echo "======================================="
echo " Cloud Security index updated"
echo "======================================="
echo
echo "Changes applied:"
echo "✓ Updated page title"
echo "✓ Updated introduction"
echo "✓ Added project descriptions"
echo "✓ Added Microsoft Defender for Cloud project"
echo
echo "Original backup:"
echo "  ${FILE}.bak"
