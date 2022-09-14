#!/bin/bash

count=1
files=""
msg=""

for x in $@
do
	if [[ $count -lt $# ]]
	then
		files="$files $x"
	fi

	msg="$x"
	count=$((count + 1))
done

git add $files
if [[ $? -eq 0 ]]
then
	git commit -m $msg
	if [[ $? -eq 0 ]]
	then
		echo '[Success] Ready to push'
	else
		echo "[Failed] git commit -m '$msg'."
	fi
else
	echo "[Failed] git add $files."
fi
echo "[Finished]"

