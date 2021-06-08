#!/bin/bash
while :
do
  echo "Checking file change for n%"
  n="$1"
  str=`git diff`
  echo "str"

  FILE_ROW_COUNT=$(cat `./b.py`| wc -l)

  if ! git diff --quiet && $change > $n
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
