#!/bin/bash

if [ -n "${MATOMO_API}" ]
then
  apikey="${MATOMO_API}"
  echo $apikey
else
  echo No API Key Set
  exit 1
fi

baseurl="https://track.xyzz.work/index.php?"

mkdir -p public/docs/appendix/meta/stats/img
wget ${baseurl}"module=API&method=ImageGraph.get&idSite=3&apiModule=UserCountry&apiAction=getCountry&token_auth=${apikey}&graphType=horizontalBar&period=month&date=today&width=800&height=400" -O public/docs/appendix/meta/stats/img/visits_country.png
wget ${baseurl}"module=API&method=ImageGraph.get&idSite=3&apiModule=VisitsSummary&apiAction=get&token_auth=${apikey}&graphType=evolution&period=day&date=previous30&width=800&height=400" -O public/docs/appendix/meta/stats/img/visits_summary.png
wget ${baseurl}"module=API&method=ImageGraph.get&idSite=3&apiModule=DevicesDetection&apiAction=getModel&token_auth=${apikey}&graphType=horizontalBar&period=month&date=today&width=800&height=400" -O public/docs/appendix/meta/stats/img/visits_device.png
