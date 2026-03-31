#!/bin/bash

echo "=============================================="
echo "Log File Analyzer"
echo "Student   : Abeer Saxena (24BCE10987)"
echo "College   : VIT Bhopal"
echo "=============================================="

# Check if file argument is provided
if [ $# -lt 1 ]; then
    echo "Usage: $0 /path/to/logfile [keyword]"
    exit 1
fi

logfile=$1
keyword=$2

# Check if file exists
if [ ! -f "$logfile" ]; then
    echo "Error: File not found!"
    exit 1
fi

echo "Analyzing file: $logfile"
echo "----------------------------------------------"

# Total lines
echo "Total lines: $(wc -l < "$logfile")"

# Total words
echo "Total words: $(wc -w < "$logfile")"

# Total characters
echo "Total characters: $(wc -c < "$logfile")"

# If keyword provided
if [ ! -z "$keyword" ]; then
    echo "----------------------------------------------"
    echo "Keyword '$keyword' occurrences:"
    grep -i "$keyword" "$logfile" | wc -l
fi

echo "=============================================="
