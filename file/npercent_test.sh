#!/bin/bash

filename=`./b.py`

diff_msg=`git diff --stat $filename`
echo "$diff_msg"

change_line=$(git diff --stat $filename) | cut -f  3 -d' '

# FILE_ROW_COUNT=$(cat $filename| wc -l)
# echo "$FILE_ROW_COUNT"

str="abc@naver.com;bcd@naver.com;cde@naver.com"

mails=$(echo $str | tr ";" "\n")

for mail in $mails
do
	echo "[$mail]"
done
[출처] 리눅스 쉘 스크립트 문자열 분리(string split) 명령어 구현|작성자 예비개발자

