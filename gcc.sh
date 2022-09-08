#!/bin/bash
for x in $@
do
    echo $x
    name=$(echo $x | rev | cut -d '.' -f 2- | rev)
    gcc -o $name.out -Wall -Werror -Wextra -pedantic -std=gnu89 $x | less
done
