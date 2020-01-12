---
title: "Glossary"
description: "LEDStrain Wiki | Glossary"
weight: 2
# bookFlatSection: false
# bookToc: 6
# bookHidden: false
---

## Backlight 
One of the two ways to illuminate a screen. This kind of illumination is the one present on 100% of screens (excluding eInk screens). See [Frontlight](#frontlight) to know about the alternative illumination.

## Blue light
One of the colours protected off from a screen with backlight, which has a spectrum of light that affects us in a different way than the other colours. In the last years it started to become a concern for people who work all day with a computer and appeared special glasses to block it, as it stimulates some brain activity after a few hours of use, provoking difficulty to sleep, plus other effects.

## Colour depth
Measured in bits, it means how many million colours will your monitor show. For someone with eyestrain, usually the less is the better. 24 or 32 bits (and in some cases also 16) of colours implies the use of a technique called dithering (see below), which plays an important role in eyestrain. This parameter can be set on any Operating system on screen configuration, and also on TV. Some monitors/TV are capable of displaying more bits than others. You should check your display configuration and check how many bits is capable of. The parameter can be 6, 8, 10 or 12, being that number how many bits per colour channel (RGB).

## Digital vibrance
Dithering technique used by Nvidia and Ati to create more million colours to show. At a high levels it can cause sever eyestrain in some minutes to people who never had it even after playing for many hours in the worst illumination conditions.

## Dithering

* [Tests](tests#dithering)

### Temporal Dithering

{{< forum-post 1444 >}}


One of the major causes of eyestrain. This is a strategy which uses ultrafast colour changing pixels to cheat the eye obtaining a colour that was not supposed to be possible of being displayed by the screen. The translation of pixels happens at a speed the eye can notice it, but some people get his/her neurological system stressed.

## FRC
Frame rate control. Used to dither. Be aware of the specification of your monitor/TV, because it can state it has 8 bits of colour when on reality it has 6bits+FRC to achieve that 2 extra bits.

## Flicker
When the backlight turns on and off at a frequency not perceivable by the eye is used to dim the brightness, causing eyestrain. See PWM to further information.

## Frontlight
One of the two ways to add illumination to a screen. In this case, this illumination is the one always attached to eInk screens, if any. is much less aggressive than backlight due not having the light coming from behind the screen towards your eyes, as with backlight. With frontlight the light comes from the borders of the screen, trapped behind a special layer which makes it travel through all the surface.

## PWM

* [Guide](guides#pwm)
* https://laptopmedia.com/tag/pwm
* https://www.tftcentral.co.uk/articles/pulse_width_modulation.htm

Pulse width modulation. Along with dithering, those are the two major causes of eyestrain. It's the way, since appearance of led screen illumination, most of screens (phones, tablets, monitors, TV) dims the brightness. It's process is simple: when brightness is at 100%, the LED's are on an always-on configuration, but when it's dimmed, the LED's blink at an ultra fast speed unnoticeable for the brain, staying in an OFF position for more fractions of second as more you dim the brightness. Some screens uses PWM at the very first moment you dim it, others only at a low brightness, and other don't use PWM at all due they use a direct/analog current dimming method.

## Subpixel Rendering
Reference link:
* [Wikipedia](https://en.m.wikipedia.org/wiki/Subpixel_rendering)
