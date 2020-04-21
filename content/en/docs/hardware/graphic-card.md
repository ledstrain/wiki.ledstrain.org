---
title: "Graphic Card"
slug: graphic-card
weight: 7
# bookFlatSection: false
# bookToc: 6
# bookHidden: false
---

## Reference Links
* [LED Strain {{< param slug >}} Tag](https://ledstrain.org/t/{{< param slug >}}?sort=top)

-DISABLE DITHERING IN NVIDIA CARDS:

There is a parameter called "DIGITAL VIBRANCE" which is mainly the most important parameter to take in consideration when trying to disable dithering. As higher the number higher the use of dithering. It is used mainly for gamers, but even them consider it is not good to have it turned so high for much long.

Depending on the Windows 10 version it is easilly removed or not. It could be good to watch the following tutorial to edit the registry to get rid of dithering completelly. Don't miss it at the end of the video an explanation regarding problems you can find in build numbers newer than 1607: https://youtu.be/DOGVm1tjsT4

-DISABLE DITHERING IN AMD CARDS:

The dithering parameter related in AMD cards is the one called saturation. Reducing it it should reduce the eyestrain.

-DISABLE DITHERING IN INTEL CARDS:

There is no parameter to be disabled on Control panel to get rid of dithering on Intel cards, so we have to use 3rd party applications. In windows we can use "ditherig" and in Linux igfxtweak can be used, as for sure another ways to achieve it. Those 3rd party apps could work on Nvidia or AMD cars, as well
