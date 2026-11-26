#!/usr/bin/env bash
# fix_navbars.sh — rewrite <nav> in all HTML files with correct relative depth
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
PAGES=("index.html:Home" "cloud/index.html:Cloud Security" "soc/index.html:SOC Analyst" \
       "aiml/index.html:AI/ML Security" "automation/index.html:AI Automation" \
       "projects/index.html:Projects" "resume/index.html:Resume")

build_nav() {
  local depth="$1" prefix="" out=""
  [ "$depth" -gt 0 ] && prefix=$(printf '../%.0s' $(seq 1 "$depth")) || prefix="."
  for entry in "${PAGES[@]}"; do
    local path="${entry%%:*}" label="${entry##*:}"
    out+="    <a href=\"$prefix/$path\">$label</a>\n"
  done
  printf '%b' "$out"
}

find "$ROOT" -name '*.html' -not -path '*/backup/*' | while read -r file; do
  rel="${file#$ROOT/}"
  depth=$(awk -F/ '{print NF-1}' <<< "$rel")
  nav=$(build_nav "$depth")
  # Replace everything between <nav> and </nav>
  perl -0pi -e "s|<nav>.*?</nav>|<nav>\n$nav</nav>|s" "$file"
  echo "Fixed: $rel (depth $depth)"
done

echo "Done."
