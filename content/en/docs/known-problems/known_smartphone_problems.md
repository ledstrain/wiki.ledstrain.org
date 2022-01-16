---
title: Problems/tests/solutions for smartphones
---
## Poor image quality on a screen
No complaints of eye pain from poor image quality on mobile phones have been reported yet. It is worth mentioning, though. First of all, poor image quality may happen on inexpensive phones or smaller Chinese brands.  
May be present on 1-2 screens. If you are concerned about pain on a large number of devices, this is hardly the reason.  
The phones of the same model can have different LCD screens (different suppliers, panels, different factories etc.), and also there could be one screen of different quality. This primarily applies to phones made by smaller Chinese brands. Be careful when purchasing and try to check a particular phone with your own eyes in advance.

Examples: 
- [an article about different screen suppliers for iPhone 13](https://english.etnews.com/20210506200001),
- [post about 7 same POCO X3 NFC with 7 different screens (in Russian)](https://4pda.to/forum/index.php?showtopic=943228&view=findpost&p=111348742),
- [two Honor 50 comparison with the same settings](https://ds-blobs-4.cdn.devapps.ru/24450744.jpg),
- [variation in the quality of polarizers in oppo and vivo](https://ledstrain.org/d/1334-smartphone-polarization-research)

## PWM: stroboscopic invisible flicker
Notice that there are two important numbers to measure: PWM frequency and PWM flicker ratio. Notebookcheck measures only frequency.  
- [A nice article about PWM and its influence, google translation from Russian](https://deep--review-com.translate.goog/articles/amoled-pwm-flicker/?_x_tr_sl=ru&_x_tr_tl=en&_x_tr_hl=ru)
- [A simplified guide on how to test whether PWM affects you](https://ledstrain.org/d/1404-eyestrain-triggers/9)
- [Video that illustrates a pencil test, also called a pen test](https://www.youtube.com/watch?v=IHKWQRzS2tE&loop=0)
- [Notebookcheck PWM frequency data table for all devices starting from 2016-2017](https://www.notebookcheck.net/Benchmarks-and-Test-Results.142793.0.html?type=&sort=&max_results=1000&archive=1&or=0&showBars=1&bench_350_944=1&model=1&screen_panel_type=1)   
 
Phones can have dc-dimming option to reduce PWM. Try turning it on.  
For Android phones there are few apps that can successfully eliminate PWM by setting up 100% brightness and applying a black filter above screen image, imitating dc-dimming:
- Oled Saver, probably uses complicated filter
- [PWMfree, uses black filter](https://forum.xda-developers.com/t/app-amoled-pwmfree.3898070/?__cf_chl_jschl_tk__=AFSoq18Bz4MKbpn8Y6AJvLHyTLxp0y1prraqCthK0aY-1640438292-0-gaNycGzNCxE)
If your phone has dc-dimming, you still can use Oled Saver or another app together with dc-dimming. Dc-dimming on phones is not a remedy. Oled Saver can improve situation further.

## FRC/Temporal dithering/Inversion: small potentially slightly visible flicker
- [Jen's page with all the flicker descriptions in brief](https://www.flickersense.org/background/led-screens)
- Inversion tests: [http://www.techmind.org/lcd/index.html#inversion, ](http://www.techmind.org/lcd/index.html#inversion,)<http://www.lagom.nl/lcd-test/inversion.php>

## Undefined problem X
Complaints about piercing white color, feeling of looking at a wielding, inability to set up a pleasant brightness (screen always feels too bright), pressure and pain in or around the eyes, inability to focus on the screen, inability to focus far after the screen exposure, red eyes with red blood vessels (may appear next morning). Those symptoms alone are not enough to differentiate this problem from other sources. It is better to check sensitivity to other sources before coming to the conclusion that you have problem X.  
If you have problem X, it is important to know the following: the problem has spread within phones since about 2017 (Xiaomi since 2016). No safe models have been found yet. If you have an old safe device, do not rush to sell it / throw it away. Try not to break it. When replacing the broken screen or when purchasing that same old model, you may encounter problem X again: there's no guarantee that the old screen and the new screen will be the same screen.
The problem was present before 2016, but rarely.  
Can be related to screen parts: [hypothesis here](https://ledstrain.org/d/1458-ips-screen-parts-description-and-dangerous-parts-hypothesis-lightvergence)

## Excessive blue light
There are some reports that reducing blue light helps, but sometimes not for 100%.   
Many phones have a built-in blue filter, if not, you can download the application, there are a lot of apps on a search request "blue filter")   
To check the influence of the blue color from the blue subpixel, you can read/look at a picture where there is no blue color: for example, set the background and font colors with the rgb code in the FBReader reader (any value, any value, 0)   
To limit the blue spectrum from the entire screen - optics have glasses with a blue-blocking filter.   
- [Post about blue light blocking glasses success](https://ledstrain.org/d/798-anyone-had-success-with-blue-light-filters/25)   
