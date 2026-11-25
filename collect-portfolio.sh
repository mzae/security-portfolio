
#!/bin/bash

# SECURITY PORTFOLIO FILE COLLECTOR

PORTFOLIO_DIR="$HOME/security-portfolio"
OUTPUT_FILE="$HOME/portfolio-review.txt"

if [ ! -d "$PORTFOLIO_DIR" ]; then
    echo "ERROR: Portfolio directory not found!"
    exit 1
fi

{
    echo "=========================================="
    echo "SECURITY PORTFOLIO REVIEW"
    echo "Generated: $(date)"
    echo "=========================================="

    for FILE in \
        "index.html" \
        "assets/css/style.css" \
        "automation/index.html" \
        "projects/index.html" \
        "templates/project-template.md"
    do
        echo ""
        echo "=========================================="
        echo "FILE: $FILE"
        echo "=========================================="

        if [ -f "$PORTFOLIO_DIR/$FILE" ]; then
            cat "$PORTFOLIO_DIR/$FILE"
            echo ""
            echo "[END OF FILE: $FILE]"
        else
            echo "[FILE NOT FOUND: $FILE]"
        fi
    done

} > "$OUTPUT_FILE"

echo ""
echo "PORTFOLIO COLLECTION COMPLETE"
echo "Output: $OUTPUT_FILE"
du -h "$OUTPUT_FILE"
