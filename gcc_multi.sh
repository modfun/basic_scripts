#!/bin/bash
gcc_files=''
gcc_name=''
for x in $@
do
	gcc_files="$gcc_files $x"
	gcc_name=$(echo $x | rev | cut -d '.' -f 2- | rev)
done

gcc -o $gcc_name.out -v -ggdb -pedantic -Wall -Werror -Wextra -std=gnu89 $gcc_files | less

echo
echo "[Compiled] $gcc_files"
echo "[Output] $gcc_name.out"
