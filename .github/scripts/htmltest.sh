#!/bin/bash

testDir="${TESTDIR}"
configFile="${RUNNER_TMPDIR}"/.htmltest.yml

wget --no-verbose 'https://raw.githubusercontent.com/ledstrain/wiki.ledstrain.org/master/.github/config/htmltest.yml' -O "${configFile}"
curl https://htmltest.wjdp.uk | bash
chmod +x './bin/htmltest'
./bin/htmltest --conf "${configFile}" --skip-external "${testDir}"
