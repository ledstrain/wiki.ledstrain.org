#!/bin/bash

testDir="${TESTDIR}"
tmpDir="${TMPDIR}"
configFile="${GITHUB_WORKSPACE}/.github/config/htmltest.yml"

(
  cd "${tmpDir}"
  curl https://htmltest.wjdp.uk | bash
  chmod +x './bin/htmltest'
  ./bin/htmltest --conf "${configFile}" --skip-external "${testDir}"
)
