#!/bin/bash

if [ -n "${MATOMO_API}" ]; then
  apikey="${MATOMO_API}"
else
  echo No API Key Set
  exit 1
fi

if [ "${BUILD}" == "SOURCE" ]; then
  basedir="content"
elif [ "${BUILD}" == "COMPILED" ]; then
  basedir="public"
fi

baseurl="$MATOMO_BASEURL"

mkdir -p "${basedir}"/docs/appendix/meta/stats/img

# LEDStrain Forum
wget "${baseurl}""module=API&method=ImageGraph.get&idSite=3&apiModule=UserCountry&apiAction=getCountry&token_auth=${apikey}&graphType=horizontalBar&period=month&date=today&width=800&height=400" -O "${basedir}"/docs/appendix/meta/stats/img/03_visits_country.png
wget "${baseurl}""module=API&method=ImageGraph.get&idSite=3&apiModule=VisitsSummary&apiAction=get&token_auth=${apikey}&graphType=evolution&period=day&date=previous30&width=800&height=400" -O "${basedir}"/docs/appendix/meta/stats/img/03_visits_summary.png
wget "${baseurl}""module=API&method=ImageGraph.get&idSite=3&apiModule=DevicesDetection&apiAction=getModel&token_auth=${apikey}&graphType=horizontalBar&period=month&date=today&width=800&height=400" -O "${basedir}"/docs/appendix/meta/stats/img/03_visits_device.png

# LEDStrain Wiki
wget "${baseurl}""module=API&method=ImageGraph.get&idSite=4&apiModule=UserCountry&apiAction=getCountry&token_auth=${apikey}&graphType=horizontalBar&period=month&date=today&width=800&height=400" -O "${basedir}"/docs/appendix/meta/stats/img/04_visits_country.png
wget "${baseurl}""module=API&method=ImageGraph.get&idSite=4&apiModule=VisitsSummary&apiAction=get&token_auth=${apikey}&graphType=evolution&period=day&date=previous30&width=800&height=400" -O "${basedir}"/docs/appendix/meta/stats/img/04_visits_summary.png
wget "${baseurl}""module=API&method=ImageGraph.get&idSite=4&apiModule=DevicesDetection&apiAction=getModel&token_auth=${apikey}&graphType=horizontalBar&period=month&date=today&width=800&height=400" -O "${basedir}"/docs/appendix/meta/stats/img/04_visits_device.png
