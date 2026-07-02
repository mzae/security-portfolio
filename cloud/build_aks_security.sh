#!/bin/bash

# =====================================================
# Build AKS & Azure Container Registry Security Page
# Author: Daniel Wanjama
# =====================================================

cat > cloud/aks-security.html << 'EOF'
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AKS & Azure Container Registry Security | Daniel Wanjama</title>

    <link rel="stylesheet" href="../assets/css/style.css">
</head>

<body>

<nav>
    <a href="../index.html">Home</a>
    <a href="index.html">Cloud Security</a>
    <a href="../soc/index.html">SOC Analyst</a>
    <a href="../aiml/index.html">AI/ML Security</a>
    <a href="../projects/index.html">Projects</a>
    <a href="../resume/index.html">Resume</a>
</nav>

<div class="container">

<section class="page-header">

<h1>AKS & Azure Container Registry Security</h1>

<p>
Deploying and securing Azure Kubernetes Service (AKS) and Azure Container Registry (ACR)
using enterprise cloud security best practices.
</p>

</section>

<section>

<h2>Executive Summary</h2>

<p>
This project demonstrates the deployment and security configuration of Azure Kubernetes Service (AKS)
and Azure Container Registry (ACR) within Microsoft Azure.
</p>

<p>
The implementation focuses on securing containerized workloads through Azure RBAC,
Managed Identity, Azure Firewall, DNS configuration,
and network segmentation.
</p>

<p>
Azure Portal, Azure CLI and Azure PowerShell were used throughout the deployment to
provision, validate, secure and clean up cloud resources following Microsoft Azure
security best practices.
</p>

</section>

<section>

<h2>Architecture</h2>

<p>
The architecture demonstrates how Azure Kubernetes Service securely communicates
with Azure Container Registry using Managed Identity,
Azure RBAC and Azure Firewall.
</p>

<img src="../assets/img/cloud/aks-security/architecture.png"
alt="AKS Architecture"
width="100%">

</section>

<section>

<h2>Skills Demonstrated</h2>

<div class="skills">

<span class="skill">Azure Kubernetes Service</span>
<span class="skill">Azure Container Registry</span>
<span class="skill">Azure RBAC</span>
<span class="skill">Managed Identity</span>
<span class="skill">Azure Firewall</span>
<span class="skill">Azure CLI</span>
<span class="skill">Azure PowerShell</span>
<span class="skill">DNS</span>
<span class="skill">Virtual Networks</span>

</div>

</section>

<section>

<h2>Lab Walkthrough</h2>

<h3>1. Environment Preparation</h3>

<p>
Prepared the Azure environment and launched Azure Cloud Shell before deployment.
</p>

<img src="../assets/img/cloud/aks-security/step01.png"
alt="Step 1"
width="100%">

<h3>2. Deploy AKS and Azure Container Registry</h3>

<p>
Provisioned Azure Kubernetes Service and Azure Container Registry.
</p>

<img src="../assets/img/cloud/aks-security/step02.png"
alt="Step 2"
width="100%">

<h3>3. Configure Azure RBAC</h3>

<p>
Assigned the AcrPull role to the AKS Managed Identity to enable secure image pulls.
</p>

<img src="../assets/img/cloud/aks-security/step03.png"
alt="Step 3"
width="100%">

<h3>4. Configure Azure Firewall</h3>

<p>
Configured Azure Firewall application and network rules to protect traffic.
</p>

<img src="../assets/img/cloud/aks-security/step04.png"
alt="Step 4"
width="100%">

<h3>5. Validation</h3>

<p>
Validated DNS resolution, firewall rules and connectivity using Azure CLI and Cloud Shell.
</p>

<img src="../assets/img/cloud/aks-security/step05.png"
alt="Step 5"
width="100%">

<h3>6. Cleanup</h3>

<p>
Removed Azure resources after validation to prevent unnecessary costs.
</p>

<img src="../assets/img/cloud/aks-security/step06.png"
alt="Step 6"
width="100%">

</section>

<section>

<h2>Conclusion</h2>

<p>
This project demonstrates practical experience deploying and securing Azure Kubernetes Service (AKS)
and Azure Container Registry (ACR) using Azure security best practices including RBAC,
Managed Identity, Azure Firewall, network segmentation and secure resource management.
</p>

</section>

</div>

</body>
</html>
EOF

echo "========================================"
echo "AKS Security page created successfully."
echo "Location: cloud/aks-security.html"
echo "========================================"
