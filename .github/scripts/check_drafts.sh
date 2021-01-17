#!/usr/bin/env bash

while read file; do
  echo "::warning file="$file"::"$(basename $file)": Draft set to true"
done < <(find content -iname '*.md' -exec grep --files-with-matches 'draft: true' "{}" +)
