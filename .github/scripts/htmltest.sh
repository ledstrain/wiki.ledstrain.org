#!/bin/bash

testDir="${TESTDIR}"
tmpDir="${TMPDIR}"
configFile="${GITHUB_WORKSPACE}/.github/config/htmltest.yml"

(
  cd "${tmpDir}"
  curl https://htmltest.wjdp.uk | bash
  chmod +x './bin/htmltest'
  
  if [ -f "${configFile}" ]
  then
    ./bin/htmltest --conf "${configFile}" --skip-external "${testDir}"
  else
      ./bin/htmltest --skip-external "${testDir}"
  fi
)
