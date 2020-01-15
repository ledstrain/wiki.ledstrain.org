#!/bin/bash

testDir="${TESTDIR}"
configFile=".github/config/htmltest.yml"

curl https://htmltest.wjdp.uk | bash
chmod +x './bin/htmltest'
./bin/htmltest --conf "${configFile}" --skip-external "${testDir}"
