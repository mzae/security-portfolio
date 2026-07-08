#!/bin/bash

cat > cloud/storage-security.html << 'EOF'
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Azure Storage Security</title>
    <link rel="stylesheet" href="../assets/css/style.css">
</head>

<body>

<nav>
    <a href="../index.html">Home</a>
    <a href="../cloud/index.html">Cloud Security</a>
    <a href="../soc/index.html">SOC Analyst</a>
    <a href="../aiml/index.html">AI/ML Security</a>
    <a href="../projects/index.html">Projects</a>
    <a href="../resume/index.html">Resume</a>
</nav>

<div class="container">

<h1>Azure Storage Security with Service Endpoints and Network Security Groups</h1>

<h2>Project Overview</h2>

<p>
This project demonstrates how Azure Storage can be secured using Azure Service
Endpoints, Network Security Groups (NSGs), and Storage Account network rules.
The solution restricts storage access to trusted virtual network subnets,
ensuring that traffic remains on Azure's private backbone while reducing
exposure to unauthorized access and data exfiltration.
</p>

<h2>Business Scenario</h2>

<p>
A fictional organization stores confidential business documents in Azure Blob
Storage. The organization must ensure that only workloads running within
approved Azure virtual networks can access the storage account while preventing
internet-based access. The objective is to implement network isolation and
defense-in-depth controls without impacting business operations.
</p>

<h2>Security Objectives</h2>

<ul>
    <li>Protect Azure Storage against unauthorized network access.</li>
    <li>Restrict storage communication to trusted virtual network subnets.</li>
    <li>Implement Azure Service Endpoints for secure private connectivity.</li>
    <li>Apply Network Security Groups to enforce network segmentation.</li>
    <li>Validate that only authorized resources can access the storage account.</li>
    <li>Demonstrate Azure cloud security best practices.</li>
</ul>

<h2>Solution Architecture</h2>

<img src="../assets/img/storage-security/architecture.png"
     alt="Azure Storage Security Architecture">

<p>
The solution uses Azure Virtual Networks, Service Endpoints and Network Security
Groups to ensure that Azure Storage traffic remains within Microsoft's private
network while restricting access to approved resources.
</p>

<h2>Azure Services Used</h2>

<table>
<tr>
<th>Service</th>
<th>Purpose</th>
</tr>

<tr>
<td>Azure Storage Account</td>
<td>Secure storage for blobs and files</td>
</tr>

<tr>
<td>Virtual Network</td>
<td>Private network segmentation</td>
</tr>

<tr>
<td>Service Endpoints</td>
<td>Private connectivity to Azure Storage</td>
</tr>

<tr>
<td>Network Security Groups</td>
<td>Traffic filtering and segmentation</td>
</tr>

<tr>
<td>Azure Virtual Machine</td>
<td>Connectivity testing</td>
</tr>
</table>

<h2>Threat Model</h2>

<table>

<tr>
<th>Threat</th>
<th>Mitigation</th>
</tr>

<tr>
<td>Unauthorized network access</td>
<td>Storage firewall and Service Endpoints</td>
</tr>

<tr>
<td>Data exfiltration</td>
<td>Restricted subnet access</td>
</tr>

<tr>
<td>Lateral movement</td>
<td>Network Security Groups</td>
</tr>

<tr>
<td>Public internet exposure</td>
<td>Virtual Network isolation</td>
</tr>

</table>

<hr>

<h2>Implementation</h2>

<p>
The implementation phases will be documented in the following sections.
Each phase will include objectives, implementation steps, screenshots,
validation and the security impact of the configuration.
</p>

<h2>Security Outcome</h2>

<ul>
<li>Reduced attack surface</li>
<li>Private Azure network connectivity</li>
<li>Controlled storage access</li>
<li>Improved network isolation</li>
<li>Defense in depth</li>
</ul>

<h2>Skills Demonstrated</h2>

<ul>
<li>Azure Storage</li>
<li>Azure Networking</li>
<li>Service Endpoints</li>
<li>Network Security Groups</li>
<li>Storage Firewalls</li>
<li>Cloud Security</li>
<li>Defense in Depth</li>
<li>Least Privilege Networking</li>
</ul>

</div>

</body>
</html>
EOF

echo "✅ storage-security.html has been rebuilt successfully."
