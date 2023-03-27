#!/bin/sh
set -e

# Get the commit message of the latest commit
commit_message=$(git log -1 --pretty=%B)

# Check if the commit message contains the pattern AB# followed by a number
if echo "$commit_message" | grep -qE '\bAB#[0-9]+\b'
then
  echo "Commit message contains AB# followed by a number"
else
  echo "Commit message does not contain AB# followed by a number"
  exit 1
fi
