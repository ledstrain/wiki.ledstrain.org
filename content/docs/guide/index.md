---
title: "Guide"
weight: 2
# bookFlatSection: false
# bookToc: 6
# bookHidden: false
---

## DIY Oscilloscope - PWM
<sub>[source](https://ledstrain.org/d/312-homemade-oscilloscope-to-detect-pwm-diy-guide)</sub>


For people who might be first time on this forum, and that were brought here by eyestrain, headaches, migraine, nausea, disorientation and other unpleasant symptoms caused by working with computer displays, this is a guide how to build a device that can measure whether the backlight of those displays flickers, how and when. 

{{< hint info >}}
The problem is called Pulse Width Modulation (PWM) and you can read more about it here -  
http://www.tftcentral.co.uk/articles/pulse_width_modulation.htm
{{< /hint >}}

It is important to note that you cannot trust any reviews that claim the device youre about to buy does not use PWM, as displays on phones, tablets, laptops and other tech are sourced from more manufacturers for each brand. All you can do is test for yourself and trust yourself.

1. We are building an amateur oscilloscope with fraction of the money the real professional ones cost. If you have a friend who can lend you a real one, it is a better and more accurate choice. First you need to download Christian Zeitnitz soundcard oscope software here - https://www.zeitnitz.eu/scope_en

2. We will be transferring light signal to sound, so you need a probe that can pick up light. A simple photodiode will do, for my device I used this one (Europe shop) - https://www.conrad.de/de/fotodiode-dil-1100-nm-60-osram-bpw-34-153005.html
A better one recommended to me was this one, I will use it in my next probe - https://www.conrad.de/de/fotodiode-to-39-820-nm-55-osram-bpw-21-152977.html

3. You have to solder the diode to a sound cable that you can connect to the soundcard or your computers microphone jack. A simple 3,5mm stereo jack will do. That one, when taken apart, has three pins - Left ear, Right ear and Ground. You have to connect the photodiode pins to either left or right, and then to Ground. As long as one pin is connected to the Ground, if the other is L or R does not seem to matter. This kind of soldering is fairly easy, just be careful not to use too powerful solder tool so you do not melt the photodiode with the heat alone. 
![](https://i.imgur.com/EUE99z6.jpg)
![](https://i.imgur.com/3ibAU32.jpg)

4. There is a certain voltage going through when the diode is picking up light, as it serves similarly as when you have a solar powered calculator. There is a report to be careful not to fry the sound-card, however I encountered no problems so far and the voltage seems to be very small to be able to cause any damage. Just in case though, its good to -

5. Use external sound card. You can buy one cheaply second hand off ebay, or a new one. The reading should be better when a quality sound-card is applied, instead of basic notebook sound card. Also if you would happen to fry it, you just have to replace the card. My external card has a range of 44,1 Khz, which means it can probably read PWM up to 44Khz. Any higher and I would need more professional grade equipment. Newest macbooks are reported to have PWM at 112Khz for example.
![](https://i.imgur.com/RjmZRru.jpg)

6. Now, connect the card to the computer, open up the oscilloscope software, select the  input card in the settings and you are set. Example photo is my external display with lowered brightness to 80%. PWM free only at 100% brightness.
![](https://i.imgur.com/tU8Ltz0.jpg)

A more portable option, although maybe not so accurate, is to use your smartphone and connect the diode to its headphone jack. You can then get an oscope application from either android store or apple store. 
More info here: http://www.retropcmania.com/2017/02/measurements-flicker-of-light-with.html

### Additional Links
* http://budgetlightforum.com/node/61254

## Forum Tutorial

LED Strain takes on a minimalist approach to posting. 
However, there are some tools available to creating your posts, available in a toolbar.

![](https://i.imgur.com/dlwc0rb.png)
{{< bootstrap-table >}}
|Function|Action|Key|
|:-|:-|:-:|
|Preview|Returns view back to post while editing|👁️|
|Attach  |Attaches image to post by uploading through imgur|📄 |
|Header |Inputs header                                                |`H`|
|Bold      |Sets selected text to bold                         |`B` |
|Italic     |Sets selected text to italic                         |*I* |
|Quote  |Quote the selected text                             |![](https://i.imgur.com/BzpSSWN.png))
|Code    |Sets the selected text in code format for easier reading / copying|![](https://i.imgur.com/0CqPOS1.png)|
|Link      |Set a clickable link. Works on images as well|🔗 |
| List|Adds a unordered list with bullet points |![](https://i.imgur.com/hzBVWTi.png)|
|List | Adds a ordered list with numbers             |![](https://i.imgur.com/E5Xr5jI.png)|
|Emoji| Insert Twemoji based emoji |![](https://i.imgur.com/uc1rQXD.png)|
|Mention|Mention a user or post. If set, will notify the user|`@`|
{{< /bootstrap-table >}}







___
Headers of h1, h2, and h3 are centered

```
# Header 1
## Header 2
### Header 3
```

{{< bootstrap-table >}}
Tables can be created.
The second row, `|:-|:-:|` indicates the justification. Left-aligned: `|:-|`, Centered: `|:-:|`, Right-Aligned: `|-:|`
```markdown
|Fruit|Count|
|:-|:-:|
|Apple|5|
|Pear|6|
```
|Fruit|Count|
|:-|:-:|
|Apple|5|
|Pear|6|
{{< /bootstrap-table >}}
___

Lines can be created to help separate a post with either 3 underscores or 3 dashes.
```
___
---
```
___
---
Inline links `[can be created](https://ledstrain.org)` to look cleaner  
Inline links [can be created](https://ledstrain.org) to look cleaner  
Images as well  

`[![](https://i.imgur.com/lulyQtW.jpg)](https://ledstrain.org)`  
[![](https://i.imgur.com/lulyQtW.jpg)](https://ledstrain.org)  
`[![](https://i.imgur.com/lulyQtW.jpg)](https://ledstrain.org) [![](https://i.imgur.com/lulyQtW.jpg)](https://anothersite.com)`  
[![](https://i.imgur.com/lulyQtW.jpg)](https://ledstrain.org) [![](https://i.imgur.com/lulyQtW.jpg)](https://anothersite.com)  

___
Links are colored either green or purple.  
[A local link](https://ledstrain.org)  
[A external link](https://testsite.tld)  
* Green indicate the link is *internal* and points somewhere within ledstrain.org  
* Purple indicate the link is *external* and points out to the web  

Touchscreen users will have a boundary around linked images to indicate this as well  
![](https://i.imgur.com/Rr1mvRN.png)  

___

#### Moderating

We're here to help  
If there's spam, or if you wish to split a discussion to a new thread let us know by flagging the post.  
We can also help with adjusting tags or renaming discussions   

![](https://i.imgur.com/MN2mqZv.png)

![](https://i.imgur.com/8ohnLnY.gif)

___ 

#### Private Messaging
[![project chat](https://img.shields.io/badge/zulip-join_chat-brightgreen.svg)](https://ledstrain.zulipchat.com)

Internal private messaging was removed in favor of Zulip Chat, [more info here](https://ledstrain.org/d/731-private-messaging-transistion) and [here](https://ledstrain.org/d/722-new-chat)



