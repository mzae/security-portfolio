#!/usr/bin/env bash

set -euo pipefail

echo "[+] Building Cloud Security Portfolio"

mkdir -p backup/cloud

cp cloud/*.html backup/cloud/ 2>/dev/null || true

########################################

# STORAGE SECURITY

########################################

cat > cloud/storage-security.html <<'EOF'

<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<title>Azure Storage Security</title>
<link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>

<nav>
<a href="../index.html">Home</a>
<a href="index.html">Cloud</a>
</nav>

<div class="container">

<h1>Securing Azure Storage with Service Endpoints and Network Isolation</h1>

<h2>Overview</h2>
<p>
Implemented Azure Storage security controls using service endpoints,
storage firewall restrictions, and subnet-based access controls.
</p>

<h2>Business Problem</h2>
<p>
Storage accounts exposed to unrestricted network access increase the
risk of data leakage and unauthorized access.
</p>

<h2>Objectives</h2>
<ul>
<li>Restrict storage access</li>
<li>Configure service endpoints</li>
<li>Validate network isolation</li>
<li>Improve cloud security posture</li>
</ul>

<h2>Security Outcome</h2>
<ul>
<li>Reduced attack surface</li>
<li>Controlled storage access</li>
<li>Improved network isolation</li>
</ul>

<h2>Skills Demonstrated</h2>
<ul>
<li>Azure Storage</li>
<li>Service Endpoints</li>
<li>Cloud Security</li>
<li>Network Isolation</li>
</ul>

</div>
</body>
</html>
EOF

########################################

# NETWORK SEGMENTATION

########################################

cat > cloud/network-segmentation.html <<'EOF'

<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<title>Network Segmentation</title>
<link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>

<nav>
<a href="../index.html">Home</a>
<a href="index.html">Cloud</a>
</nav>

<div class="container">

<h1>Designing Segmented Cloud Networks Using NSGs and ASGs</h1>

<h2>Overview</h2>
<p>
Implemented Azure Network Security Groups and Application Security Groups
to control traffic flows between workloads.
</p>

<h2>Business Problem</h2>
<p>
Flat networks increase lateral movement opportunities during compromise.
</p>

<h2>Objectives</h2>
<ul>
<li>Deploy NSGs</li>
<li>Configure ASGs</li>
<li>Restrict traffic paths</li>
<li>Validate segmentation</li>
</ul>

<h2>Security Outcome</h2>
<ul>
<li>Reduced lateral movement risk</li>
<li>Improved segmentation</li>
<li>Enhanced visibility of traffic flows</li>
</ul>

<h2>Skills Demonstrated</h2>
<ul>
<li>NSGs</li>
<li>ASGs</li>
<li>Azure Networking</li>
<li>Traffic Filtering</li>
</ul>

</div>
</body>
</html>
EOF

########################################

# AZURE FIREWALL UPGRADE

########################################

cat > cloud/azure-firewall.html <<'EOF'

<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<title>Azure Firewall Security</title>
<link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>

<nav>
<a href="../index.html">Home</a>
<a href="index.html">Cloud</a>
</nav>

<div class="container">

<h1>Azure Firewall Deployment and Traffic Control</h1>

<h2>Overview</h2>
<p>
Configured Azure Firewall to manage and inspect inbound and outbound traffic
across cloud resources.
</p>

<h2>Objectives</h2>
<ul>
<li>Deploy Azure Firewall</li>
<li>Create network rules</li>
<li>Control traffic flows</li>
<li>Improve perimeter security</li>
</ul>

<h2>Security Outcome</h2>
<ul>
<li>Centralized traffic management</li>
<li>Improved network visibility</li>
<li>Controlled access paths</li>
</ul>

<h2>Skills Demonstrated</h2>
<ul>
<li>Azure Firewall</li>
<li>Network Security</li>
<li>Traffic Filtering</li>
<li>Cloud Governance</li>
</ul>

</div>
</body>
</html>
EOF

########################################

# CLOUD INDEX UPDATE

########################################

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
Cloud security projects covering identity, networking,
storage protection, and Azure security controls.
</p>

<div class="card-grid">

<div class="card">
<h3>Azure RBAC Security</h3>
<a href="rbac-security.html">View Project</a>
</div>

<div class="card">
<h3>Azure Storage Security</h3>
<a href="storage-security.html">View Project</a>
</div>

<div class="card">
<h3>Network Segmentation</h3>
<a href="network-segmentation.html">View Project</a>
</div>

<div class="card">
<h3>Azure Firewall</h3>
<a href="azure-firewall.html">View Project</a>
</div>

</div>

</div>
</body>
</html>
EOF

echo "[+] Cloud portfolio completed"
echo "[+] Refresh http://localhost:8000/cloud/"
