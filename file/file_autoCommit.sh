#!/bin/bash
while :
do

  specify_filename_="$1"
  echo "Specify file name"

  if ! git diff $specify_filename_ --quiet
  then
    git checkout $specify_filename
    git add $specify_filename_
    git commit -a -m "Auto Commit: tracking only $specify_filename_"
    git --no-pager push -u origin auto-commit

  # else
    #echo "Working tree clean. Nothing to commmit."
  fi

  sleep 60
done
