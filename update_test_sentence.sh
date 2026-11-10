#!/bin/bash
file="/workspaces/codespace-min/test.txt"
touch "$file"
if [ -s "$file" ] && [ "$(tail -c 1 "$file" | od -An -t x1 | tr -d ' \n')" != "0a" ]; then
  printf '\n' >> "$file"
fi
printf '%s\n' 'This is a new English sentence.' >> "$file"
