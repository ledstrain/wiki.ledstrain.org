---
title: "Windows"
weight: 3
# bookFlatSection: false
# bookToc: 6
# bookHidden: false
---

## Reference Links                                                              
* [LED Strain {{< param title >}} Tag](https://ledstrain.org/t/{{< param title >}}?sort=top)

## Gradient banding issue
{{< forum-post "11638" >}}

# ClearType font rendeing
Cleartype is a feature in Windows Vista and later that attempts to smooth on-screen fonts using RGB based antialiasing. However because of this it is possible to see blurriness in the rendered fonts and color fringing on the edges of on-screen text, which can cause eyestrain in more sensitive users.

# Graphical rendering changes

In build 1607 (July 2016) of Windows 10, some changes were introduced that negatively impacts on-screen rendering and are strongly suspected of causing eyestrain that is not present with older Windows builds on the same hardware. The objective cause and implications of these changes are unknown but some changes in window manager composition have been suspected as a culprit.

{{< forum-post id="https://ledstrain.org/d/169-windows-10-anniversary-edition/28" length="350" >}}

The only known solution (if affected) is to refrain using such a newer build of Windows 10. Build 1511 (November 2015) is believed to be unaffected.
