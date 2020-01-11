#!/bin/bash

# Matomo Api key == ${MATOMO_API}

assets_dir="assets/files/stats"
# LEDStrain Forum
wget "${MATOMO_BASEURL}""module=API&method=ImageGraph.get&idSite=3&apiModule=VisitsSummary&apiAction=get&token_auth=${MATOMO_API}&graphType=evolution&period=day&date=previous30&width=800&height=400" -O "${assets_dir}/img/03_visits_summary.png"
wget "${MATOMO_BASEURL}""module=API&method=ImageGraph.get&idSite=3&apiModule=UserCountry&apiAction=getCountry&token_auth=${MATOMO_API}&graphType=horizontalBar&period=month&date=today&width=800&height=400" -O "${assets_dir}/img/03_visits_country.png"
wget "${MATOMO_BASEURL}""module=API&method=ImageGraph.get&idSite=3&apiModule=DevicesDetection&apiAction=getModel&token_auth=${MATOMO_API}&graphType=horizontalBar&period=month&date=today&width=800&height=400" -O "${assets_dir}/img/03_visits_device.png"

# LEDStrain Wiki
wget "${MATOMO_BASEURL}""module=API&method=ImageGraph.get&idSite=4&apiModule=VisitsSummary&apiAction=get&token_auth=${MATOMO_API}&graphType=evolution&period=day&date=previous30&width=800&height=400" -O "${assets_dir}/img/04_visits_summary.png"
wget "${MATOMO_BASEURL}""module=API&method=ImageGraph.get&idSite=4&apiModule=UserCountry&apiAction=getCountry&token_auth=${MATOMO_API}&graphType=horizontalBar&period=month&date=today&width=800&height=400" -O "${assets_dir}/img/04_visits_country.png"
wget "${MATOMO_BASEURL}""module=API&method=ImageGraph.get&idSite=4&apiModule=DevicesDetection&apiAction=getModel&token_auth=${MATOMO_API}&graphType=horizontalBar&period=month&date=today&width=800&height=400" -O "${assets_dir}/img/04_visits_device.png"
