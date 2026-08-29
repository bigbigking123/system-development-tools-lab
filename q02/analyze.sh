#!/bin/bash

file="$1"

if [ ! -f "$file" ]; then
    echo "Error: file not found: $file" >&2
    exit 1
fi

echo "Top 2 paths with most 5xx responses:"
awk -F',' 'NR > 1 && $4 >= 500 && $4 < 600 { count[$3]++ }
END {
    for (path in count)
        print count[path], path
}' "$file" | sort -k1,1nr -k2,2 | head -n 2

echo "Average latency_ms:"
awk -F',' 'NR > 1 { sum += $5; n++ }
END {
    printf "%.2f\n", sum / n
}' "$file"
