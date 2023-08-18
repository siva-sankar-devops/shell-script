#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename="$1"

if [ ! -f "$filename" ]; then
    echo "File not found: $filename"
    exit 1
fi

output_file="reversed_$filename"

while IFS= read -r line; do
    reversed_line=$(echo "$line" | rev)
    echo "$reversed_line"
done < "$filename" > "$output_file"

echo "Reversed lines written to $output_file"
