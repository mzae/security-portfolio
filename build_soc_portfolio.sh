#!/usr/bin/env bash

set -e

echo "[+] Building SOC Portfolio"

for file in sentinel-lab incident-response threat-hunting malware-analysis
do
cat > soc/${file}.html <<EOF

<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<title>${file}</title>
<link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>

<nav>
<a href="../index.html">Home</a>
<a href="../cloud/index.html">Cloud</a>
<a href="../soc/index.html">SOC</a>
<a href="../aiml/index.html">AI Security</a>
<a href="../projects/index.html">Projects</a>
<a href="../resume/index.html">Resume</a>
</nav>

<div class="container">

<h1>${file}</h1>

<h2>Overview</h2>
<p>
Project documentation in progress.
</p>

<h2>Scenario</h2>
<p>
Describe the security scenario being investigated.
</p>

<h2>Tools Used</h2>
<ul>
<li>Microsoft Sentinel</li>
<li>KQL</li>
<li>Defender</li>
<li>Security Monitoring Tools</li>
</ul>

<h2>Investigation</h2>
<p>
Document investigation methodology.
</p>

<h2>Findings</h2>
<p>
Document findings and evidence.
</p>

<h2>Recommendations</h2>
<p>
Provide remediation recommendations.
</p>

<h2>Lessons Learned</h2>
<p>
Document key takeaways.
</p>

</div>

</body>
</html>
EOF
done

echo "[+] SOC pages created"
