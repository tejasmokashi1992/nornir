#!/bin/sh
set -e

#Requires https://github.com/pydanny/contributors
contributors -f md nornir-automation/nornir

cp README.md README.md.bkp
sed '/CONTRIBUTORS_LIST_STARTS_HERE/,//d' README.md.bkp > README.md
rm README.md.bkp

echo "<!--- CONTRIBUTORS_LIST_STARTS_HERE  --->" >> README.md
cat output.md >> README.md
rm output.md
