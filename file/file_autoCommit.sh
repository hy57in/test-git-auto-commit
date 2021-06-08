#!/bin/bash
while :
do

  specify_filename_="$1"
  echo "Specify file name"

  git config --global credential.helper store
  git config --global credential.helpter cache

  if ! git diff $specify_filename_ --quiet
  then
    #git --no-pager checkout $specify_filename
    git --no-pager add $specify_filename_
    git --no-pager commit -a -m "Auto Commit: tracking only $specify_filename_"
    git --no-pager push -u origin auto-commit

  # else
    #echo "Working tree clean. Nothing to commmit."
  fi

  sleep 60
done
