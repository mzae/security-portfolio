#!/usr/bin/env bash

set -euo pipefail

echo "[+] Starting Portfolio Phase 1 Upgrade"

# Verify we're in the correct repo

if [[ ! -f "index.html" ]]; then
    echo "[-] index.html not found"
    echo "[-] Run this from the root of security-portfolio"
    exit 1
fi

# Create backups

mkdir -p backup

cp assets/css/style.css backup/style.css.bak 2>/dev/null || true
cp cloud/index.html backup/cloud.index.html.bak 2>/dev/null || true
cp soc/index.html backup/soc.index.html.bak 2>/dev/null || true
cp projects/index.html backup/projects.index.html.bak 2>/dev/null || true
cp resume/index.html backup/resume.index.html.bak 2>/dev/null || true

echo "[+] Backups created"

# Update CSS

cat > assets/css/style.css <<'EOF'
body {
    background: #0b0f14;
    color: #00ff88;
    font-family: "Courier New", monospace;
    max-width: 1100px;
    margin: auto;
    padding: 30px;
    line-height: 1.7;
}

h1 {
    color: #ffffff;
}

a {
    color: #00ff88;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

hr {
    border: 0;
    border-top: 1px solid #1f2937;
    margin: 25px 0;
}

ul {
    list-style-type: square;
}

nav {
    margin-bottom: 30px;
    padding-bottom: 15px;
    border-bottom: 1px solid #1f2937;
}

nav a {
    margin-right: 20px;
}

.container {
    max-width: 1100px;
}
EOF

echo "[+] CSS updated"

# Cloud page

cat > cloud/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Cloud Security Portfolio</title>
    <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>

<div class="container">

<nav>
    <a href="../index.html">Home</a>
    <a href="../soc/index.html">SOC</a>
    <a href="../projects/index.html">Projects</a>
    <a href="../resume/index.html">Resume</a>
</nav>

<h1>Cloud Security Portfolio</h1>

<p>
Cloud security engineering, Azure security architecture,
identity management and network protection projects.
</p>

<h2>Labs</h2>

<ul>
    <li><a href="azure-firewall.html">Azure Firewall Configuration</a></li>
    <li><a href="iam-rbac.html">IAM & RBAC</a></li>
    <li><a href="network-security.html">Network Security Controls</a></li>
    <li><a href="aks-security.html">AKS Cluster Security</a></li>
</ul>

</div>

</body>
</html>
EOF

echo "[+] Cloud page updated"

# SOC page

cat > soc/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>SOC Analyst Portfolio</title>
    <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>

<div class="container">

<nav>
    <a href="../index.html">Home</a>
    <a href="../cloud/index.html">Cloud</a>
    <a href="../projects/index.html">Projects</a>
    <a href="../resume/index.html">Resume</a>
</nav>

<h1>SOC Analyst Portfolio</h1>

<p>
Security monitoring, threat hunting,
incident response and detection engineering.
</p>

<h2>Labs</h2>

<ul>
    <li><a href="sentinel-lab.html">Microsoft Sentinel</a></li>
    <li><a href="incident-response.html">Incident Response</a></li>
    <li><a href="threat-hunting.html">Threat Hunting</a></li>
    <li><a href="malware-analysis.html">Malware Analysis</a></li>
</ul>

</div>

</body>
</html>
EOF

echo "[+] SOC page updated"

# Projects page

cat > projects/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Projects</title>
    <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>

<div class="container">

<nav>
    <a href="../index.html">Home</a>
    <a href="../cloud/index.html">Cloud</a>
    <a href="../soc/index.html">SOC</a>
    <a href="../resume/index.html">Resume</a>
</nav>

<h1>Featured Projects</h1>

<ul>
    <li>Azure Firewall Configuration</li>
    <li>Microsoft Sentinel Monitoring</li>
    <li>Threat Hunting Investigation</li>
    <li>IAM & RBAC Security Design</li>
</ul>

</div>

</body>
</html>
EOF

echo "[+] Projects page updated"

# Resume page

cat > resume/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Resume</title>
    <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>

<div class="container">

<nav>
    <a href="../index.html">Home</a>
    <a href="../cloud/index.html">Cloud</a>
    <a href="../soc/index.html">SOC</a>
    <a href="../projects/index.html">Projects</a>
</nav>

<h1>Resume</h1>

<p>
Download my latest cybersecurity resume.
</p>

<p>
Resume PDF coming soon.
</p>

</div>

</body>
</html>
EOF

echo "[+] Resume page updated"

# Verify critical files

files=(
    "assets/css/style.css"
    "cloud/index.html"
    "soc/index.html"
    "projects/index.html"
    "resume/index.html"
)

for file in "${files[@]}"; do
    if [[ ! -f "$file" ]]; then
        echo "[-] Missing file: $file"
        exit 1
    fi
done

echo
echo "[+] Verification successful"
echo

tree -L 2

echo
echo "[+] Phase 1 completed successfully"
echo
echo "Next:"
echo "  python3 -m http.server 8000"
echo "  Open http://localhost:8000"
echo
echo "If everything looks good:"
echo "  git add ."
echo "  git commit -m 'Add site-wide navigation and portfolio structure'"
echo "  git push origin main"
