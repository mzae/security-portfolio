#!/bin/bash

echo ""
echo "========================================="
echo " SECURITY PORTFOLIO VALIDATION"
echo "========================================="
echo ""

PORTFOLIO="$HOME/security-portfolio"

if [ ! -d "$PORTFOLIO" ]; then
    echo "[FAIL] Portfolio directory not found"
    exit 1
fi

cd "$PORTFOLIO" || exit

PASS=0
FAIL=0

check_file() {
    if [ -f "$1" ]; then
        echo "[PASS] $1"
        ((PASS++))
    else
        echo "[FAIL] $1"
        ((FAIL++))
    fi
}

echo "Checking required files..."
echo ""

check_file "index.html"
check_file "automation/index.html"
check_file "cloud/index.html"
check_file "soc/index.html"
check_file "aiml/index.html"
check_file "projects/index.html"
check_file "resume/index.html"
check_file "assets/css/style.css"

echo ""
echo "Checking navigation targets..."
echo ""

for link in \
    "index.html" \
    "automation/index.html" \
    "cloud/index.html" \
    "soc/index.html" \
    "aiml/index.html" \
    "projects/index.html" \
    "resume/index.html"
do
    if [ -f "$link" ]; then
        echo "[PASS] Link target exists -> $link"
        ((PASS++))
    else
        echo "[FAIL] Broken target -> $link"
        ((FAIL++))
    fi
done

echo ""
echo "Checking HTML files..."
echo ""

find . -name "*.html" | while read -r file
do
    if grep -q "<html" "$file" &&
       grep -q "</html>" "$file"
    then
        echo "[PASS] $file"
    else
        echo "[WARN] Possible malformed HTML: $file"
    fi
done

echo ""
echo "Checking stylesheet references..."
echo ""

find . -name "*.html" | while read -r file
do
    if grep -q "style.css" "$file"
    then
        echo "[PASS] CSS linked -> $file"
    else
        echo "[WARN] No CSS reference -> $file"
    fi
done

echo ""
echo "Checking image references..."
echo ""

grep -Roh 'src="[^"]*"' . 2>/dev/null | sed 's/src="//;s/"//' |
while read -r image
do
    clean=$(echo "$image" | sed 's#^\./##')

    if [ -f "$clean" ]; then
        echo "[PASS] $clean"
    else
        echo "[WARN] Missing image -> $clean"
    fi
done

echo ""
echo "Checking Git repository..."
echo ""

if git rev-parse --git-dir > /dev/null 2>&1
then
    echo "[PASS] Git repository detected"
    ((PASS++))
else
    echo "[FAIL] Not a Git repository"
    ((FAIL++))
fi

echo ""

REMOTE=$(git remote -v 2>/dev/null | head -1)

if [ -n "$REMOTE" ]
then
    echo "[PASS] Git remote configured"
    echo "$REMOTE"
    ((PASS++))
else
    echo "[FAIL] No git remote configured"
    ((FAIL++))
fi

echo ""
echo "Checking Git status..."
echo ""

git status --short

echo ""

HTML_COUNT=$(find . -name "*.html" | wc -l)
CSS_COUNT=$(find . -name "*.css" | wc -l)
JS_COUNT=$(find . -name "*.js" | wc -l)
PNG_COUNT=$(find . -name "*.png" | wc -l)

echo "HTML files : $HTML_COUNT"
echo "CSS files  : $CSS_COUNT"
echo "JS files   : $JS_COUNT"
echo "PNG files  : $PNG_COUNT"

echo ""
echo "========================================="
echo " VALIDATION SUMMARY"
echo "========================================="
echo "PASS: $PASS"
echo "FAIL: $FAIL"
echo ""

if [ "$FAIL" -eq 0 ]
then
    echo "✅ PORTFOLIO PASSED VALIDATION"
else
    echo "❌ PORTFOLIO HAS ISSUES TO FIX"
fi

echo ""
