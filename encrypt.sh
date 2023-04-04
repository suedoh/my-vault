#!/bin/bash

for file in /vault/*; do
  ansible-vault encrypt "$file"
done

