#!/usr/bin/env bash

if command -v code >/dev/null 2>&1; then
  while read -r ext; do
    code --install-extension "$ext" --force
  done <config/vsc-extensions.txt
fi
