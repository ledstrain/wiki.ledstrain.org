---
title: Stats
description: Stats for LEDStrain
weight: 1
---

## LEDStrain
### Forum

{{< resource-image "/img/03_visits_summary*" "Visits Summary 30 days" >}}  

{{< resource-image "/img/03_visits_country*" "Visits by Country 30 days" >}}  

{{< resource-image "/img/03_visits_device*" "Visits by Device 30 days" >}}  


### Wiki

{{< resource-image "/img/04_visits_summary*" "Visits Summary 30 days" >}}  

{{< resource-image "/img/04_visits_country*" "Visits by Country 30 days" >}}  

{{< resource-image "/img/04_visits_device*" "Visits by Device 30 days" >}}  

## Additional Stats

Additional stats can be included from these two sources:

* Matomo
* Google Search

Post the link formatted per the API (here's a [demo one](https://demo.matomo.org/index.php?module=API&method=ImageGraph.get&idSite=3&apiModule=DevicesDetection&apiAction=getBrowsers&token_auth=anonymous&graphType=horizontalBar&period=month&date=today&width=500&height=250)).

* The data must be accessible through a `wget` or `curl` command. 
* If a api-key is used, `anonymous` or a similar value can be used indicate it should be replaced by the api-key (eg `$apikey`)
* The result should be a image, json or csv file. Ideally a PNG image format or a JSON file.

{{< hint info >}}
User privacy is important!
API requests that provides too much information about specific visitors will not be added.  
For example, visitor logs.
{{< /hint >}}


### Resources:

* [Matomo API](https://developer.matomo.org/api-reference/reporting-api-metadata#static-image-graphs)
* [Google Search Console API](https://developers.google.com/webmaster-tools/search-console-api-original/v3/how-tos/search_analytics.html)
* [Query to JSON](https://tools.knowledgewalls.com/querystringtojson)
* [Json to Query](https://tools.knowledgewalls.com/jsontoquerystring)
