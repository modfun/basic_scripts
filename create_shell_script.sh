#!/bin/bash

for x in $@
do
    echo "#!/bin/bash" > $x
    chmod u+x $x
    echo "[Created] $x"
done
