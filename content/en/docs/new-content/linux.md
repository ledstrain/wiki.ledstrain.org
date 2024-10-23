---
title: Linux
description: Hacks and useful tips for Linux
---
## Section conten

1. How to check if dithering is present or not (Intel Arc and Intel iGPU 11th generation and above): the method using hardware register reading.
2. How to check if dithering is present or not (intel iGPU): method using reading /sys/kernel/debug/dri/X/i915_display_info.

## How to check if dithering is present or not (Intel Arc and Intel iGPU 11th generation and above): a method using hardware register reading

For Intel Arc and Intel iGPU (11th generation and above), you can check for dithering by reading register 0x70030. In fact, it might be a different register if you have multiple monitors, but for simplicity, you should have only one monitor connected to the graphics card while reading the register. Here are the commands for Debian-based operating systems:

```bash
sudo apt update
sudo apt install intel-gpu-tools
```

```bash
sudo intel_reg read 0x70030
```

My result is [0x00800140](https://www.rapidtables.com/convert/number/hex-to-binary.html?x=00800140), and we need the 5th bit from the right, so let's convert it to binary representation:</p>

000000001000000000000001010**0**0000</p>

The 5th bit from the right is 0, meaning dithering is not present. If it is equal to 1, then dithering is present.

Link to the Intel manual where you can find information on registers (including PIPE_MISC, which we worked with above: https://cdrdv2-public.intel.com/703047/intel-gfx-prm-osrc-tgl-vol-02-c-command-reference-registers-part-2.pdf, page 688).

## How to check if dithering is present or not: method using reading /sys/kernel/debug/dri/X/i915_display_info

Try running the command

```bash
sudo cat /sys/kernel/debug/dri/X/i915_display_info
```

in the terminal. The command will output a lot of data, but among it, there should be information about the presence of dithering

```bash
dither=yes|no
```

X is the device number, which can be obtained through

```bash
inxi -G
```

But if there is only one video card, it should be 1.