---
id: audio
title: Sound Commands
---

Nibble has eight configurable FM-Synthesized audio channels.

An example configuration for the first channel would be:

```lua
-- We are configuring the first channel
channel(CH1)

-- Operator frequency = note played
freqs(1.0, 1.0, 1.0, 1.0)

-- First operator, a simple sine wave sounding for one second
envelope(OP1, 0, 1, 0, 1.0, 0.9, 0.0, 0)

-- Route the operator to the output at full volume
route(OP1, OUT, 1.0)
```

And notes could be played with:

```lua
-- MIDI note number, MIDI volume
noteon(48, 255)
```

To stop a sustained note:

```lua
-- MIDI note number
noteoff(48)
```

## channel`(ch)`

Specify which channel should the next commands be executed on.

Nibble has eight channels:

- CH1
- CH2
- CH3
- CH4
- CH5
- CH6
- CH7
- CH8

Usage example:

```lua
channel(CH1)
```

## freqs`(fop1, fop2, fop3, fop4)`

Sets the relative frequencies of each operator in the current channel.

The note frequency will be multiplied by the value specified for each operator.

Examples

```lua
-- Exact note frequency in all operators
freqs(1.0, 1.0, 1.0, 1.0)

-- Custom frequencies
freqs(0.5, 0.83, 1.3, 17.2)
```

## envelope`(op, use_sustain, volume, a, d, s, r, wave)`

Sets the envelope for an operator in the current channel.

`op` can be one of:

- OP1
- OP2
- OP3
- OP4

`use_sustain` is either 0 or 1, if 0 the note won't be sustained, if 1 it will.

> WARNING: sustained notes required a `noteoff`() call to stop sounding.

`volume` is a number between 0 and 1, 1 being the maximum volume.

`a`, `d`, `s`, `r` are the envelope values, `a`, `d` and `r` are in seconds, `s`
is between 0 and 1.

`wave` is the kind of wave:

- 0: sine
- 1: square
- 2: triangle
- 3: saw

## route`(op_from, op_to, volume)`

This can be used to route operators to the input of other operators (or
themselves) and to route them to the speakers.

It routes `op_from` to `op_to`, with a volume of `volume`.

> In the case of operator-to-operator routing, the volume is the amount of
> influence the `op_from` will have in `op_to`

Examples:

```lua
route(OP1, OP2, 0.5)
route(OP2, OUT, 1.0)
```

```lua
route(OP1, OP1, 0.5)

route(OP1, OP2, 0.5)
route(OP2, OP1, 8.5)

route(OP1, OUT, 0.3)
route(OP2, OUT, 0.8)
```

## noteon`(note, intensity)`

Plays the MIDI `note` with an `intensity`

Intensity is between 0-255.

## noteoff`(note)`

Triggers the release envelope of a sustained note.

`note` is a MIDI note number.

## reverb`(delay, feedback)`

> WARNING: if you want give the delay in seconds, multiply it by 44100. The
> maximum supported delay is around 33ms

Enables the delay filter in the current channel.

`delay` is the amount of samples to delay.

`feedback` is between 0-1 for 0% to 100% feedback.
