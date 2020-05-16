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

## Dithering
### Nvidia

* [Disabling color banding in Nvidia](https://youtu.be/DOGVm1tjsT4)

Nvidia cards use a technology called `Digital Vibrance` which may be related to dithering in Nvidia cards.  
In Windows 10 newer then build 1607, it may be possible to disable by disabling color banding.

### Amd Cards

The dithering parameter related in AMD cards is the one called saturation.

### Intel Cards

Intel's included Control Panel does not currently allow configuration of dithering.  
Some 3rd party applications are available that may allow dithering to be configured.  
* Windows: `ditherig`
* Linux: `igfxtweak`
