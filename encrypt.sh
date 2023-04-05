#!/bin/bash

for file in /vault/*; do
  ansible-vault encrypt "$file"

  echo "Moving $file to /locker..."
  mv "$file" /locker
done

