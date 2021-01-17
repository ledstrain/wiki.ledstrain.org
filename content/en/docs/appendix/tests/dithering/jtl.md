---
title: "jtl"
date: 2020-12-29T02:24:28-08:00
draft: true
---

## Dithering tests

| GPU | Submodel | Driver/kernel | Connected by  | Result | Other remarks |
|----------|----------|----------|---------------|--------|---------------|
| AMD Radeon R9 M370X   | Mac Edition | Linux kernel 5.4 with amdgpu driver | "passive" mini DisplayPort->DVI adapter cable | No dithering detected | xrandr `dither` property is set to auto
| AMD Radeon Pro W5500  | Reference     | Linux kernel 5.10 with amdgpu driver | Dual link DVI cable | No dithering detected |
