#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <password_hash>"
  exit 1
fi

password_hash=$1

echo "Cracking password hash $password_hash using dictionary attack..."

# Loop through each word in dictionary file
while read -r word; do
  # Hash word with md5sum and compare to password hash
  if [ "$(echo -n "$word" | md5sum | cut -d ' ' -f 1)" = "$password_hash" ]; then
    echo "Password found: $word"
    exit 0
  fi
done < dictionary.txt

echo "Password not found in dictionary."
