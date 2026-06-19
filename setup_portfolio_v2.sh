#!/bin/bash

set -e

echo "=========================================="
echo " Cybersecurity Portfolio V2 Setup"
echo "=========================================="

# Verify git repo
if [ ! -d ".git" ]; then
    echo "[ERROR] This is not a Git repository."
    exit 1
fi

echo "[+] Fetching latest changes..."
git fetch origin

CURRENT_BRANCH=$(git branch --show-current)

echo "[+] Current branch: $CURRENT_BRANCH"

# Create branch only if it doesn't exist
if git show-ref --verify --quiet refs/heads/portfolio-v2; then
    echo "[+] Branch portfolio-v2 already exists."
    git checkout portfolio-v2
else
    echo "[+] Creating branch portfolio-v2..."
    git checkout -b portfolio-v2
fi

echo "[+] Creating image directories..."

mkdir -p assets/images/profile
mkdir -p assets/images/cloud-security
mkdir -p assets/images/soc-analyst
mkdir -p assets/images/ai-ml-security

echo "[+] Creating portfolio pages..."

touch cloudlabs.md
touch soclabs.md
touch aimlsecurity.md

echo "[+] Backing up navigation.yml..."

mkdir -p backups

cp _data/navigation.yml \
   backups/navigation.yml.$(date +%Y%m%d-%H%M%S).bak

echo "[+] Adding starter content..."

if [ ! -s cloudlabs.md ]; then
cat > cloudlabs.md << 'EOF'
---
title: Cloud Security Portfolio
permalink: /cloudlabs/
---

# ☁️ Cloud Security Portfolio

This section showcases cloud security engineering projects and labs.

## Areas Covered

- Azure Security
- Identity & Access Management
- RBAC
- AKS Security
- Azure Firewall
- Network Security
EOF
fi

if [ ! -s soclabs.md ]; then
cat > soclabs.md << 'EOF'
---
title: SOC Analyst Portfolio
permalink: /soclabs/
---

# 🛡️ SOC Analyst Portfolio

This section showcases SOC, threat detection, and incident response work.

## Areas Covered

- Threat Hunting
- SIEM
- Microsoft Sentinel
- Incident Response
- Detection Engineering
EOF
fi

if [ ! -s aimlsecurity.md ]; then
cat > aimlsecurity.md << 'EOF'
---
title: AI/ML Security Portfolio
permalink: /aimlsecurity/
---

# 🤖 AI/ML Security Portfolio

This section showcases AI and machine learning security research.

## Areas Covered

- Prompt Injection
- LLM Security
- AI Red Teaming
- RAG Security
- AI Governance
- Secure AI Deployment
EOF
fi

echo "[+] Staging changes..."
git add .

echo "[+] Creating checkpoint commit..."
git commit -m "Initialize portfolio v2 structure" || true

echo ""
echo "=========================================="
echo " Portfolio V2 Setup Complete"
echo "=========================================="
echo ""
echo "Created:"
echo "  cloudlabs.md"
echo "  soclabs.md"
echo "  aimlsecurity.md"
echo ""
echo "Image folders:"
echo "  assets/images/cloud-security/"
echo "  assets/images/soc-analyst/"
echo "  assets/images/ai-ml-security/"
echo "  assets/images/profile/"
echo ""
echo "Navigation file was NOT modified."
echo "A backup was created under:"
echo "  backups/"
echo ""
echo "Current branch:"
git branch --show-current
echo ""
echo "Next:"
echo "  1. Review the generated pages"
echo "  2. Update navigation.yml manually"
echo "  3. Test locally"
echo "  4. Push portfolio-v2 branch"
