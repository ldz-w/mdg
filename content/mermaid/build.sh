#!/bin/bash

# This script will build the Mermaid sources (ending in *.mmd BUT NOT *.orig.mmd) and copy
# them to the images folder.

set -euo pipefail

for mmd in $(ls *.mmd | grep -v -E ".*.orig.mmd"); do
    echo "$mmd"
    mmdc -i "${mmd}" -o "${mmd%.mmd}.svg"
done

cp *.svg ../images/
