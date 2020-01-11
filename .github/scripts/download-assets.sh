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

mkdir -p "${basedir}"/docs/appendix/meta/stats/img

stats_basedir="docs/appendix/meta/stats"

# LEDStrain Forum
wget "${MATOMO_BASEURL}""module=API&method=ImageGraph.get&idSite=3&apiModule=VisitsSummary&apiAction=get&token_auth=${apikey}&graphType=evolution&period=day&date=previous30&width=800&height=400" -O "${basedir}"/"${stats_basedir}"/img/03_visits_summary.png
wget "${MATOMO_BASEURL}""module=API&method=ImageGraph.get&idSite=3&apiModule=UserCountry&apiAction=getCountry&token_auth=${apikey}&graphType=horizontalBar&period=month&date=today&width=800&height=400" -O "${basedir}"/"${stats_basedir}"/img/03_visits_country.png
wget "${MATOMO_BASEURL}""module=API&method=ImageGraph.get&idSite=3&apiModule=DevicesDetection&apiAction=getModel&token_auth=${apikey}&graphType=horizontalBar&period=month&date=today&width=800&height=400" -O "${basedir}"/"${stats_basedir}"/img/03_visits_device.png

# LEDStrain Wiki
wget "${MATOMO_BASEURL}""module=API&method=ImageGraph.get&idSite=4&apiModule=VisitsSummary&apiAction=get&token_auth=${apikey}&graphType=evolution&period=day&date=previous30&width=800&height=400" -O "${basedir}"/"${stats_basedir}"/img/04_visits_summary.png
wget "${MATOMO_BASEURL}""module=API&method=ImageGraph.get&idSite=4&apiModule=UserCountry&apiAction=getCountry&token_auth=${apikey}&graphType=horizontalBar&period=month&date=today&width=800&height=400" -O "${basedir}"/"${stats_basedir}"/img/04_visits_country.png
wget "${MATOMO_BASEURL}""module=API&method=ImageGraph.get&idSite=4&apiModule=DevicesDetection&apiAction=getModel&token_auth=${apikey}&graphType=horizontalBar&period=month&date=today&width=800&height=400" -O "${basedir}"/"${stats_basedir}"/img/04_visits_device.png
