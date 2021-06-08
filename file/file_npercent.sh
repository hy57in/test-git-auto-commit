#!/bin/bash
while :
do
  n="$1"
  echo "Checking file change for n%"

  if ! git diff --quiet
  then
    git checkout auto-commit
    git add .
    git commit -m "Auto Commit: More than $n percent change detected."
    git push -u origin auto-commit

  # else
    #echo "Working tree clean. Nothing to commmit."
  fi

  sleep 60
done
