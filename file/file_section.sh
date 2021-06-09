#!/bin/bash
while :
do
  echo "Specify file section"

  filename="$1"
  n="$2"
  m="$3"
  diff_msg=`git diff --stat $filename`

  FILE_ROW_COUNT=$(cat $filename| wc -l) # 전체 줄 수 

  if ! git diff --quiet && $change_percent > $n
  then
    git checkout auto-commit
    git add $filename
    git commit -m "Auto Commit: section $n ~ $m change detected."
    git push -u origin auto-commit

  # else
    #echo "Working tree clean. Nothing to commmit."
  fi

  sleep 60
done
