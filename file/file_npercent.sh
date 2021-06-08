echo "Checking file change for n%"

n="$1"



git add $file_name

git diff $file_name

# n%만 변경 감지 어떻게?

#!/bin/bash
while :
do
  n="$1"
  echo "Checking file change for n%"

  if ! git diff --quiet $specify_filename 
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
