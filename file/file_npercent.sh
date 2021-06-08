#!/bin/bash
while :
do
  echo "Checking file change for n%"
  filename="$1"
  n="$2"
  _100="100"
  diff_msg=`git diff --stat $filename`

  change_line=$(echo $diff_msg | cut -f  3 -d' ')

  FILE_ROW_COUNT=$(cat $filename| wc -l)
  change=`expr $change_line / $FILE_ROW_COUNT`
  change_percent=`expr $change \* $`
  echo "$FILE_ROW_COUNT"

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
