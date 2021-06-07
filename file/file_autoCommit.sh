#!/bin/bash
while :
do
  #echo "Specify file name"

  specify_filename="$1"

  if ! git diff $specify_filename --quiet
  then
    #git config --global credential.helper store
    #git config --global credential.helpter cache
    #git --no-pager checkout -b specify_file

    git --no-pager checkout -b $specify_filename
    git --no-pager add $specify_filename
    git --no-pager commit -a -m "Auto Commit: tracking only $file_name"
    git --no-pager push -u origin auto-commit

  else
    #echo "Working tree clean. Nothing to commmit."
  fi

  sleep 60
done
