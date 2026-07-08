#!/bin/bash

set -e

FILE="../cloud/azure-firewall.html"

echo "[*] Creating backup..."
cp "$FILE" "${FILE}.bak"

echo "[*] Updating Business Scenario..."

sed -i 's/Organizations increasingly host business-critical workloads in Microsoft Azure./A fictional organization hosts multiple business-critical applications within Microsoft Azure. The security team requires centralized inspection of outbound traffic to reduce the attack surface and enforce consistent network security policies./' "$FILE"

echo "[*] Improving DNS Proxy explanation..."

sed -i '/Strengthens overall network governance./a\
            <li>Centralized DNS requests improve monitoring and troubleshooting.</li>' "$FILE"

echo "[*] Adding Logging & Monitoring control..."

sed -i '/<\/table>/i\
        <tr>\
            <td>Logging & Monitoring</td>\
            <td>Azure Firewall Diagnostic Logs provide visibility for auditing and investigations.</td>\
            <td>✔ Implemented</td>\
        </tr>' "$FILE"

echo "[*] Improving Lessons Learned..."

sed -i 's/The implementation also demonstrated/This project reinforced my understanding that/' "$FILE"

echo "[*] Finished successfully."

echo
echo "Backup created:"
echo "${FILE}.bak"
