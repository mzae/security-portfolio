#!/bin/bash

set -e

echo "========================================"
echo " Homepage AI/ML Portfolio Upgrade"
echo "========================================"

mkdir -p backup

echo "[+] Backing up homepage..."
cp index.html backup/index.html.bak.$(date +%s)

echo "[+] Checking AI/ML directory..."

mkdir -p aiml

touch aiml/index.html
touch aiml/prompt-injection.html
touch aiml/llm-security.html
touch aiml/rag-security.html
touch aiml/ai-red-team.html

echo "[+] Rebuilding homepage..."

cat > index.html << 'EOF'

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daniel Wanjama | Cybersecurity Portfolio</title>
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

<header>
    <h1>Daniel Wanjama</h1>
    <p>
        Cybersecurity Analyst |
        Cloud Security Engineer |
        SOC Operations |
        AI/ML Security
    </p>
</header>

<nav>
    <a href="index.html">Home</a>
    <a href="cloud/index.html">Cloud Security</a>
    <a href="soc/index.html">SOC Analyst</a>
    <a href="aiml/index.html">AI/ML Security</a>
    <a href="projects/index.html">Projects</a>
    <a href="resume/index.html">Resume</a>
</nav>

<div class="container">

<section>
    <h2>About Me</h2>

```
<p>
    Cybersecurity professional focused on cloud security,
    identity and access management, threat detection,
    incident response, AI security, and security operations.
</p>
```

</section>

<section>
    <h2>Core Skills</h2>

```
<div class="skills">
    <span class="skill">Microsoft Sentinel</span>
    <span class="skill">Azure Security</span>
    <span class="skill">IAM & RBAC</span>
    <span class="skill">Threat Hunting</span>
    <span class="skill">Incident Response</span>
    <span class="skill">Linux</span>
    <span class="skill">Python</span>
    <span class="skill">AI Security</span>
    <span class="skill">LLM Security</span>
    <span class="skill">Prompt Injection Testing</span>
    <span class="skill">RAG Security</span>
</div>
```

</section>

<section>
    <h2>Portfolio Areas</h2>

```
<div class="card-grid">

    <div class="card">
        <h3>Cloud Security</h3>
        <p>
            Azure security engineering,
            IAM, network security,
            and cloud architecture projects.
        </p>

        <p>
            <a href="cloud/index.html">
                View Cloud Portfolio
            </a>
        </p>
    </div>

    <div class="card">
        <h3>SOC Operations</h3>

        <p>
            Security monitoring,
            threat hunting,
            incident response,
            and SIEM investigations.
        </p>

        <p>
            <a href="soc/index.html">
                View SOC Portfolio
            </a>
        </p>
    </div>

    <div class="card">
        <h3>AI / ML Security</h3>

        <p>
            LLM security assessments,
            prompt injection testing,
            secure RAG architectures,
            AI governance,
            and AI red teaming.
        </p>

        <p>
            <a href="aiml/index.html">
                View AI Security Portfolio
            </a>
        </p>
    </div>

</div>
```

</section>

<section>
    <h2>Featured Projects</h2>

```
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
        <h3>LLM Security Assessment</h3>
        <p>
            Evaluation of AI systems,
            prompt injection risks,
            and AI attack surfaces.
        </p>
    </div>

</div>
```

</section>

</div>

<footer>
    Daniel Wanjama Cybersecurity Portfolio
</footer>

</body>
</html>
EOF

echo ""
echo "========================================"
echo " Homepage Upgrade Complete"
echo "========================================"

echo ""
echo "Portfolio Tracks:"
echo "  Cloud Security"
echo "  SOC Analyst"
echo "  AI/ML Security"
echo ""

echo "Screenshot folders:"
echo "  assets/images/cloud-security/"
echo "  assets/images/soc-analyst/"
echo "  assets/images/ai-ml-security/"
echo "  assets/images/profile/"
echo ""

echo "Next:"
echo "  git add ."
echo "  git commit -m 'Add AI security portfolio'"
echo "  git push"
