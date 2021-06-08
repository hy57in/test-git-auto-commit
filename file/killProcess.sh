#!/bin/bash
result=$(ps ax | grep autoCommit.sh)

#echo $result

pkill -f "sh file_autoCommit.sh"
pkill -f "sh autoCommit.sh"