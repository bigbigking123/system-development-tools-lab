#!/bin/bash

file="$1"

if [ ! -f "$file" ]; then
    echo "Error: file not found: $file" >&2
    exit 1
fi
