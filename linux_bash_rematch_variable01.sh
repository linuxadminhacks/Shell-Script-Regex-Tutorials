#!/bin/bash
text="$(cat file.txt)"
for line in $text; do
   while [[ "$line" =~ [0-9]+ ]]; do
       echo "${BASH_REMATCH[0]}"
       line="${line#*"${BASH_REMATCH[0]}"}"
   done
done
