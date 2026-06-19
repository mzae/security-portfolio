#!/bin/bash

set -e

echo "========================================"
echo " AI/ML Security Portfolio Setup"
echo "========================================"

echo "[+] Creating backups..."

mkdir -p backup

[ -f index.html ] && cp index.html backup/index.html.bak.$(date +%s)

echo "[+] Creating AI/ML directory..."

mkdir -p aiml

echo "[+] Creating image directories..."

mkdir -p assets/images/ai-ml-security

echo "[+] Creating AI/ML pages..."

touch aiml/index.html
touch aiml/prompt-injection.html
touch aiml/llm-security.html
touch aiml/rag-security.html
touch aiml/ai-red-team.html

echo "[+] Writing AI/ML landing page..."

cat > aiml/index.html << 'EOF'

<!DOCTYPE html>

<html>
<head>
    <title>AI/ML Security Portfolio</title>
</head>
<body>

<h1>AI/ML Security Portfolio</h1>

<ul>
    <li><a href="prompt-injection.html">Prompt Injection Testing</a></li>
    <li><a href="llm-security.html">LLM Security Assessment</a></li>
    <li><a href="rag-security.html">Secure RAG Architecture</a></li>
    <li><a href="ai-red-team.html">AI Red Team Exercise</a></li>
</ul>

</body>
</html>
EOF

echo "[+] Creating Prompt Injection page..."

cat > aiml/prompt-injection.html << 'EOF'

<!DOCTYPE html>

<html>
<head>
<title>Prompt Injection Testing</title>
</head>
<body>
<h1>Prompt Injection Testing</h1>
<p>AI security assessment focusing on prompt injection attacks.</p>
</body>
</html>
EOF

echo "[+] Creating LLM Security page..."

cat > aiml/llm-security.html << 'EOF'

<!DOCTYPE html>

<html>
<head>
<title>LLM Security Assessment</title>
</head>
<body>
<h1>LLM Security Assessment</h1>
<p>Security evaluation of large language model deployments.</p>
</body>
</html>
EOF

echo "[+] Creating RAG Security page..."

cat > aiml/rag-security.html << 'EOF'

<!DOCTYPE html>

<html>
<head>
<title>Secure RAG Architecture</title>
</head>
<body>
<h1>Secure RAG Architecture</h1>
<p>Retrieval-Augmented Generation security design patterns.</p>
</body>
</html>
EOF

echo "[+] Creating AI Red Team page..."

cat > aiml/ai-red-team.html << 'EOF'

<!DOCTYPE html>

<html>
<head>
<title>AI Red Team Exercise</title>
</head>
<body>
<h1>AI Red Team Exercise</h1>
<p>AI adversarial testing and model abuse simulation.</p>
</body>
</html>
EOF

echo ""
echo "========================================"
echo " Setup Complete"
echo "========================================"

echo ""
echo "Upload screenshots to:"
echo "assets/images/ai-ml-security/"
echo ""
echo "Created:"
echo "aiml/index.html"
echo "aiml/prompt-injection.html"
echo "aiml/llm-security.html"
echo "aiml/rag-security.html"
echo "aiml/ai-red-team.html"

