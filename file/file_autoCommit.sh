#!/bin/bash
while :
do

  specify_filename="$1"
  echo "Specify file name"

  if ! git diff $specify_filename --quiet
  then
    git checkout auto-commit
    git add $specify_filename
    git commit -m "Auto Commit: tracking $specify_filename"
    git push -u origin auto-commit

  # else
    #echo "Working tree clean. Nothing to commmit."
  fi

  sleep 60
done
