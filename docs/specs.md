---
id: specs
title: Nibble Specs
---

# Video

Nibble has a `400x240px` screen, which can display `24bit` colors.

You cannot use all those colors at once, since nibble uses `8` `16 colors palettes`
(totalling to 128 colors).

Each nibble app can load a single spritesheet of `4096x1024px`. 

# Audio

Nibble can output `8 channel` `monophonic` `4OP` FM-Synthesized audio, with an
optional `per-channel delay` effect.

It is possible to directly connect the Nibble emulator to both a `DAW`, using
MIDI, or to a `MIDI controller`.

# Input

Nibble uses a single `d-pad`, `two face buttons` and `two shoulder buttons` as
main gaming buttons. There is also a non-programable `pause/menu` button.

When running in the SDK mode, the Nibble emulator can also handle keyboard and mouse.
