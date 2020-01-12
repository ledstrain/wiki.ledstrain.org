#!/bin/bash

wget 'https://raw.githubusercontent.com/ledstrain/wiki.ledstrain.org/master/.github/config/htmltest.yml' -O .htmltest.yml
curl https://htmltest.wjdp.uk | bash
chmod +x './bin/htmltest'
./bin/htmltest --conf .htmltest.yml --skip-external './linkcheck'
