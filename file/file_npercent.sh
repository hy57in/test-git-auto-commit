echo "Checking file change for n%"

n="$1"



git add $file_name

git diff $file_name

# n%만 변경 감지 어떻게?