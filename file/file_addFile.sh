#!/bin/bash
echo "git add file"

if [ "$1" = "" ]
then echo "please write file name which need to git add"
else
  specify_filename="$1"
#git checkout -b specify_file
  git add $specify_filename
  git commit -m "Add file::$specify_filename"
  git push -u origin auto-commit
fi
