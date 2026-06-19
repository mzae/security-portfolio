#!/usr/bin/env bash

set -e

echo "[+] Updating navigation bars"

NAV_SUB='
<nav>
    <a href="../index.html">Home</a>
    <a href="../cloud/index.html">Cloud Security</a>
    <a href="../soc/index.html">SOC Analyst</a>
    <a href="../aiml/index.html">AI/ML Security</a>
    <a href="../projects/index.html">Projects</a>
    <a href="../resume/index.html">Resume</a>
</nav>
'

for dir in cloud soc aiml
do
    for file in $dir/*.html
    do
        sed -i '/<nav>/,/<\/nav>/c\
<nav>\
    <a href="../index.html">Home</a>\
    <a href="../cloud/index.html">Cloud Security</a>\
    <a href="../soc/index.html">SOC Analyst</a>\
    <a href="../aiml/index.html">AI\/ML Security</a>\
    <a href="../projects/index.html">Projects</a>\
    <a href="../resume/index.html">Resume</a>\
</nav>' "$file"
    done
done

echo "[+] Navigation updated"
