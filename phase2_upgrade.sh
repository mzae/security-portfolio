#!/usr/bin/env bash

set -euo pipefail

echo "[+] Starting Phase 2 Portfolio Upgrade"

# Verify we're in repo root

if [[ ! -f "index.html" ]]; then
echo "[-] index.html not found"
echo "[-] Run this script from security-portfolio root"
exit 1
fi

# Backup folder

mkdir -p backup

cp cloud/index.html backup/cloud.index.html.bak 2>/dev/null || true
cp soc/index.html backup/soc.index.html.bak 2>/dev/null || true
cp projects/index.html backup/projects.index.html.bak 2>/dev/null || true
cp resume/index.html backup/resume.index.html.bak 2>/dev/null || true

echo "[+] Backups created"

####################################

# CLOUD PAGE

####################################

cat > cloud/index.html <<'EOF'

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cloud Security Portfolio</title>
    <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>

<nav>
    <a href="../index.html">Home</a>
    <a href="../soc/index.html">SOC</a>
    <a href="../projects/index.html">Projects</a>
    <a href="../resume/index.html">Resume</a>
</nav>

<div class="container">

<h1>Cloud Security Portfolio</h1>

<p>
Cloud security engineering projects focused on Microsoft Azure,
Identity & Access Management, Kubernetes security, and network protection.
</p>

<div class="card-grid">

<div class="card">
<h3>Azure Firewall Configuration</h3>
<p>Deploy and configure Azure Firewall security controls.</p>
<a href="azure-firewall.html">View Project</a>
</div>

<div class="card">
<h3>IAM & RBAC</h3>
<p>Implement least-privilege access and role assignments.</p>
<a href="iam-rbac.html">View Project</a>
</div>

<div class="card">
<h3>AKS Security</h3>
<p>Secure Azure Kubernetes Service workloads.</p>
<a href="aks-security.html">View Project</a>
</div>

<div class="card">
<h3>Network Security Controls</h3>
<p>NSGs, segmentation, and cloud network protection.</p>
<a href="network-security.html">View Project</a>
</div>

</div>

</div>

</body>
</html>
EOF

echo "[+] Cloud page updated"

####################################

# SOC PAGE

####################################

cat > soc/index.html <<'EOF'

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SOC Analyst Portfolio</title>
    <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>

<nav>
    <a href="../index.html">Home</a>
    <a href="../cloud/index.html">Cloud</a>
    <a href="../projects/index.html">Projects</a>
    <a href="../resume/index.html">Resume</a>
</nav>

<div class="container">

<h1>SOC Analyst Portfolio</h1>

<p>
Security Operations Center projects focused on monitoring,
threat hunting, incident response, and SIEM investigations.
</p>

<div class="card-grid">

<div class="card">
<h3>Microsoft Sentinel</h3>
<p>Log ingestion, analytics rules, and investigations.</p>
<a href="sentinel-lab.html">View Project</a>
</div>

<div class="card">
<h3>Incident Response</h3>
<p>Security event handling and response workflow.</p>
<a href="incident-response.html">View Project</a>
</div>

<div class="card">
<h3>Threat Hunting</h3>
<p>Proactive detection of suspicious activity.</p>
<a href="threat-hunting.html">View Project</a>
</div>

<div class="card">
<h3>Malware Analysis</h3>
<p>Basic malware investigation and reporting.</p>
<a href="malware-analysis.html">View Project</a>
</div>

</div>

</div>

</body>
</html>
EOF

echo "[+] SOC page updated"

####################################

# PROJECTS PAGE

####################################

cat > projects/index.html <<'EOF'

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Projects</title>
    <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>

<nav>
    <a href="../index.html">Home</a>
    <a href="../cloud/index.html">Cloud</a>
    <a href="../soc/index.html">SOC</a>
    <a href="../resume/index.html">Resume</a>
</nav>

<div class="container">

<h1>Featured Projects</h1>

<div class="card-grid">

<div class="card">
<h3>Azure Firewall Configuration</h3>
<p>Cloud network security implementation.</p>
</div>

<div class="card">
<h3>Microsoft Sentinel Investigation</h3>
<p>SIEM monitoring and threat detection.</p>
</div>

<div class="card">
<h3>IAM & RBAC</h3>
<p>Identity security and access control.</p>
</div>

<div class="card">
<h3>Threat Hunting</h3>
<p>Proactive investigation of suspicious activity.</p>
</div>

</div>

</div>

</body>
</html>
EOF

echo "[+] Projects page updated"

####################################

# RESUME PAGE

####################################

cat > resume/index.html <<'EOF'

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resume</title>
    <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>

<nav>
    <a href="../index.html">Home</a>
    <a href="../cloud/index.html">Cloud</a>
    <a href="../soc/index.html">SOC</a>
    <a href="../projects/index.html">Projects</a>
</nav>

<div class="container">

<h1>Resume</h1>

<p>Download my latest cybersecurity resume.</p>

<p>
Place your PDF here:

resume/Daniel_Mzae_Resume.pdf

</p>

</div>

</body>
</html>
EOF

echo "[+] Resume page updated"

####################################

# PROJECT TEMPLATE

####################################

mkdir -p templates

cat > templates/project-template.md <<'EOF'

# Project Title

## Overview

## Objectives

## Architecture

## Tools Used

## Implementation

## Screenshots

## Security Findings

## Lessons Learned

EOF

echo "[+] Project template created"

####################################

# VALIDATION

####################################

required=(
"cloud/index.html"
"soc/index.html"
"projects/index.html"
"resume/index.html"
"templates/project-template.md"
)

for file in "${required[@]}"
do
[[ -f "$file" ]] || {
echo "[-] Missing $file"
exit 1
}
done

echo
echo "[+] Phase 2 completed successfully"
echo
echo "Next:"
echo "1. Refresh http://localhost:8000"
echo "2. Test all navigation links"
echo "3. Review page layouts"
echo "4. Commit only after verification"
echo
