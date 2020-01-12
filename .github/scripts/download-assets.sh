#!/bin/bash

# Matomo Api key == ${MATOMO_API}

basedir="$1"
stats_assets_dir="${basedir}/files/stats"
wget_options="--no-verbose"

mkdir -p "${stats_assets_dir}"/img
# LEDStrain Forum
wget "${wget_options}" "${MATOMO_BASEURL}""module=API&method=ImageGraph.get&idSite=3&apiModule=VisitsSummary&apiAction=get&token_auth=${MATOMO_API}&graphType=evolution&period=day&date=previous30&width=800&height=400" -O "${stats_assets_dir}/img/03_visits_summary.png"
wget "${wget_options}" "${MATOMO_BASEURL}""module=API&method=ImageGraph.get&idSite=3&apiModule=UserCountry&apiAction=getCountry&token_auth=${MATOMO_API}&graphType=horizontalBar&period=month&date=today&width=800&height=400" -O "${stats_assets_dir}/img/03_visits_country.png"
wget "${wget_options}" "${MATOMO_BASEURL}""module=API&method=ImageGraph.get&idSite=3&apiModule=DevicesDetection&apiAction=getModel&token_auth=${MATOMO_API}&graphType=horizontalBar&period=month&date=today&width=800&height=400" -O "${stats_assets_dir}/img/03_visits_device.png"

# LEDStrain Wiki
wget "${wget_options}" "${MATOMO_BASEURL}""module=API&method=ImageGraph.get&idSite=4&apiModule=VisitsSummary&apiAction=get&token_auth=${MATOMO_API}&graphType=evolution&period=day&date=previous30&width=800&height=400" -O "${stats_assets_dir}/img/04_visits_summary.png"
wget "${wget_options}" "${MATOMO_BASEURL}""module=API&method=ImageGraph.get&idSite=4&apiModule=UserCountry&apiAction=getCountry&token_auth=${MATOMO_API}&graphType=horizontalBar&period=month&date=today&width=800&height=400" -O "${stats_assets_dir}/img/04_visits_country.png"
wget "${wget_options}" "${MATOMO_BASEURL}""module=API&method=ImageGraph.get&idSite=4&apiModule=DevicesDetection&apiAction=getModel&token_auth=${MATOMO_API}&graphType=horizontalBar&period=month&date=today&width=800&height=400" -O "${stats_assets_dir}/img/04_visits_device.png"
