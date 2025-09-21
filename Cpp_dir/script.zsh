#!/bin/zsh

if [ $# -eq 0 ]; then
  echo "Usage: $0 <sourcefile.c>"
  exit 1
fi

src_file="$1"
base_name="${src_file:r}"

gcc "$src_file" -o "$base_name.out"
if [ $? -ne 0 ]; then
  echo "Compilation failed."
  exit 1
fi

objdump -d "$base_name.out" > "$base_name.txt"

echo "Assembly dump saved to $base_name.txt"
