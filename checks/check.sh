#!/bin/bash

echo "Running code checks..."

# Example check 1: file must exist
if [ ! -f index.js ]; then
  echo "Error: index.js not found"
  exit 1
fi

# Example check 2: disallow console.log
if grep -rq "console.log" .; then
  echo "Error: console.log is not allowed"
  exit 1
fi

echo "All checks passed!"