---
title: Problems with monitors/laptops (image/signal/flicker-related)
---


## PWM
Full-screen flicker of the display backlight. Typically invisible, but easily detectable.   
- [Article about PWM on notebookcheck](https://www.notebookcheck.net/Why-Pulse-Width-Modulation-PWM-is-such-a-headache.270240.0.html)
- [Iris - software that emulates DC dimming, equalling PWM to that is used for 100% brightness on your device](https://iristech.co/)
- [An old and experimental tool to adjust PWM driver frequency on Windows](https://github.com/tpurtell/PWM)
- [IEEE Std 1789-2015 - recommended practices for PWM in LED lights (pdf)](http://www.bio-licht.org/02_resources/info_ieee_2015_standards-1789.pdf)

## Vcom (LCD screens)
Small flickering of separate pixels, visible with bad factory settings.  
- [Article about Vcom](https://www.eetimes.com/lcd-screens-dont-flicker-or-do-they/)
- [Post about Vcom on IXBT with flicker sample (Russian)](https://forum.ixbt.com/topic.cgi?id=28:30236:7864#7864)

## Inversion (LCD screens)
Small flickering of separate pixels, visible on test images  
Inversion tests:
- <http://www.techmind.org/lcd/index.html#inversion>
- <http://www.lagom.nl/lcd-test/inversion.php>   

[Post about inversion leading to real life visible patterns](https://ledstrain.org/d/1075-apple-miniled-products-2021/23)   
[Post about inversion leading to real life visible colored spots (Russian)](https://4pda.to/forum/index.php?showtopic=943228&view=findpost&p=112435540)   

## Temporal dithering
Small flickering of pixels to create a color, potentially visible. [May happen faster than the screen's refresh rate](https://forums.blurbusters.com/viewtopic.php?t=6799#p50428) (which is usually 60 FPS).
- [Article about dithering](https://smerity.com/articles/2013/dithering.html) with link to [example](https://codepen.io/Smerity/pen/Abwcu) (Caution! Severe flicker!)
- [Another article that has advice on where to find dithering setting for Nvidia and AMD](https://vpixx.com/vocal/dithering/)
- [Guide how to check whether dithering is affecting you and turn it off on Intel video cards (Russian)](https://4pda.to/forum/index.php?showtopic=943228&view=findpost&p=111856809)
- [Solution for temporal dithering from si_edgey](https://ledstrain.org/d/152-temporal-dithering-sensitivity-my-solution)
- [Post with a hardware and software setup to overcome dithering](https://ledstrain.org/d/794-is-there-a-name-for-seeing-a-sea-of-sparkly-motion-in-a-white-screen/5)
- [Disabling dithering on Linux with Nvidia](https://ledstrain.org/d/785-eyestrain-when-switching-from-windows-to-linux/25)
- [On laptops, discrete GPU passes its output to the integrated GPU, so it has the final say on dithering or processing](https://ledstrain.org/d/152-temporal-dithering-sensitivity-my-solution/451)
- [Ditherig, software to turn off dithering: home page](https://kawamoto.no-ip.org/henteko/index_en.html)
- [Ditherig source code](https://ledstrain.org/d/1001-ditherig-is-open-source-on-github)

You can find more about how to disable dithering through the forum search.

Dithering tests and capture:   
- [I have bought a capture card](https://ledstrain.org/d/703-i-have-bought-a-capture-card) by Seagull  
- [GPU dithering](https://ledstrain.org/d/895-gpu-dithering/) by Seagull  (Important findings: dithering frequency depends on the color and also dithering may disappear on some output modes of specific GPU)   
- [Screens under microscope in slowmo (dithering / FRC tests)](https://ledstrain.org/d/409-screens-under-microscope-in-slowmo-dithering-frc-tests) by andc    
- [Video of undefined dithering-like flicker, made visible with e-ink](https://ledstrain.org/d/152-temporal-dithering-sensitivity-my-solution/116) by ShivaWind (scroll through user posts for more info)   

## FRC
Small flickering of pixels to create a color, potentially visible. [Happens as fast as the screen's refresh rate](https://forums.blurbusters.com/viewtopic.php?t=6799#p50428) (which is usually 60 FPS).  
It is a form of temporal dithering that is tied to the matrix and is used to increase matrix color capacity.   
Data about many matrices can be found here:
- <http://www.tftcentral.co.uk/articles/monitor_panel_parts.htm>
- <http://www.panelook.com/modelsearch.php?op=size>
- [How to check panel manufacturer on MacBook](https://ledstrain.org/d/1166-completely-lost/7)

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
- [Post where 16-235 helped to eliminate eyestrain completely](https://forums.blurbusters.com/viewtopic.php?f=2&t=6351&hilit=eyestrain&start=30#p65421)
- [Article about 16-235 and 0-255 (Russian)](http://www.vodkomotornik.ru/forum/viewtopic.php?t=3073)
- [Nvidia drivers automatically interpret monitor as TV when it is plugged in through HDMI and gives it 16-235 range (dated 2015) (Russian)](https://render.ru/xen/threads/hdmi-nvidia-ogranichenie-dinamicheskogo-diapazona-do-16-235.159632/)

Image output and dithering:  
- [GPU dithering](https://ledstrain.org/d/895-gpu-dithering/) (Important findings: dithering may be absent with some image output modes)

## Image resolution scaling
Scaling algorithms make an image blurry  
- [Big detailed article about scaling](https://tanalin.com/en/articles/integer-scaling/)

## Software and OS
- [Detailed article about eyestrain from Linux (Russian)](https://www.linux.org.ru/forum/linux-hardware/15961616#comments)
- [Thread about eyestrain from linux](https://ledstrain.org/d/785-eyestrain-when-switching-from-windows-to-linux), where disabling dithering [does not fix the issue](https://ledstrain.org/d/785-eyestrain-when-switching-from-windows-to-linux/82)
- [Windows 10 anniversary edition (1607 and later) thread](https://ledstrain.org/d/169-windows-10-anniversary-edition/)
- [Thread where rebooting Windows 10 in audit mode helped](https://ledstrain.org/d/1351-rebooting-in-audit-mode-made-windows-10-useable-for-me/)
- [Chrome thread](https://ledstrain.org/d/1064-google-chrome-temporal-dithering)

## Visual effects in software
Chromatic aberration in games: 
- [Thread about one game on Reddit](https://www.reddit.com/r/theouterworlds/comments/ebvl1z/the_game_looks_so_better_without_chromatic/)

Other visual effects in games:
- [Few other visual effects in games](https://ledstrain.org/d/153-gaming-specific-issues)
- [Factorio: headache and eye pain](https://ledstrain.org/d/1203-win10-finally-caught-up-to-me-and-i-might-be-losing-my-career-because-of-it/13)
