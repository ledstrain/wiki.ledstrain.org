---
title: List of image, signal, flicker related problems for monitors and laptops
---


## PWM
Severe stroboscopic full-screen flicker, typically invisible (but easily detectable)   
- [Article about PWM on notebookcheck](https://www.notebookcheck.net/Why-Pulse-Width-Modulation-PWM-is-such-a-headache.270240.0.html)
- [Iris - software that emulates DC dimming, equalling PWM to that is used for 100% brightness on your device](https://iristech.co/)
- [An old and experimental tool to adjust PWM driver frequency on Windows](https://github.com/tpurtell/PWM)
- [IEEE Std 1789-2015 - recommended practices for PWM in LED lights (pdf)](http://www.bio-licht.org/02_resources/info_ieee_2015_standards-1789.pdf)

## Vcom (LCD screens)
Small flickering of separate pixels, visible with bad factory settings  
- [Article about Vcom](https://www.eetimes.com/lcd-screens-dont-flicker-or-do-they/)
- [Post about Vcom on IXBT with flicker sample (Russian)](https://forum.ixbt.com/topic.cgi?id=28:30236:7864#7864)

## Inversion (LCD screens)
Small flickering of separate pixels, visible on test images  
Inversion tests:
- <http://www.techmind.org/lcd/index.html#inversion>
- <http://www.lagom.nl/lcd-test/inversion.php>

## FRC
Small flickering of pixels to create a color, potentially visible   
Data about many matrices can be found here:
- <http://www.tftcentral.co.uk/articles/monitor_panel_parts.htm>
- <http://www.panelook.com/modelsearch.php?op=size>
- [How to check panel manufacturer on MacBook](https://ledstrain.org/d/1166-completely-lost/7)

## Temporal dithering
Small flickering of pixels to create a color, potentially visible
- [Article about dithering](https://smerity.com/articles/2013/dithering.html) with link to [example](https://codepen.io/Smerity/pen/Abwcu) (Caution! Severe flicker!)
- [Another article that has advice on where to find dithering setting for Nvidia and AMD](https://vpixx.com/vocal/dithering/)
- [Guide how to check whether dithering is affecting you and turn it off on Intel video cards (Russian)](https://4pda.to/forum/index.php?showtopic=943228&view=findpost&p=111856809)
- [Solution for temporal dithering from si_edgey](https://ledstrain.org/d/152-temporal-dithering-sensitivity-my-solution)
- [Post with a hardware and software setup to overcome dithering](https://ledstrain.org/d/794-is-there-a-name-for-seeing-a-sea-of-sparkly-motion-in-a-white-screen/5)
- [Ditherig, software to turn off dithering: home page](https://kawamoto.no-ip.org/henteko/index_en.html)
- [Ditherig source code](https://ledstrain.org/d/1001-ditherig-is-open-source-on-github)

## Cables
HDMI cable
- [Post about symptoms from a specific HDMI cable](https://ledstrain.org/d/214-hdmi-vs-vga-cable-and-eyestrain/23)
- [Visible flicker from a malfunctioning HDMI cable (Russian)](https://4pda.to/forum/index.php?showtopic=943228&view=findpost&p=111506641) - this post was originally on ledstrain
- [Post about HDMI cable influence on eyestrain (Russian)](http://forum.ixbt.com/topic.cgi?id=28:29319:724#724)

VGA cable   
- [Post about VGA cable flicker](https://ledstrain.org/d/992-vga-cables)   

Conversion cables
- [Post about yellow tint with conversion cables](https://ledstrain.org/d/959-cables-actually-matter)

## Image output
- [Post where eyestrain decreases with 16-235 range](https://ledstrain.org/d/884-bad-eye-strain-100-at-rgb-output-dymanic-range-full-20-at-limtied)
- [Two examples of eyestrain or discomfort from different color range settings (Russian)](https://4pda.to/forum/index.php?showtopic=943228&view=findpost&p=112169530)
- [Article about 16-235 and 0-255 (Russian)](http://www.vodkomotornik.ru/forum/viewtopic.php?t=3073)
- [Nvidia drivers automatically interpret monitor as TV when it is plugged in through HDMI and gives it 16-235 range (dated 2015) (Russian)](https://render.ru/xen/threads/hdmi-nvidia-ogranichenie-dinamicheskogo-diapazona-do-16-235.159632/)

## Image resolution scaling
Scaling algorithms make an image blurry  
- [Big detailed article about scaling](https://tanalin.com/en/articles/integer-scaling/)

## Software and OS
- [Detailed article about eyestrain from Linux (Russian)](https://www.linux.org.ru/forum/linux-hardware/15961616#comments)

## Visual effects in software
Chromatic aberration in games: 
- [Thread about one game on Reddit](https://www.reddit.com/r/theouterworlds/comments/ebvl1z/the_game_looks_so_better_without_chromatic/)

Other visual effects in games:
- [Few other visual effects in games](https://ledstrain.org/d/153-gaming-specific-issues)
