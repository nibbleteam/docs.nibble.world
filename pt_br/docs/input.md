---
id: input
title: Input Commands
---

Nibble has the following buttons:

- UP
- DOWN
- LEFT
- RIGHT

- RED
- BLUE

- BLACK
- WHITE

All of them can be used with these functions.

## button_down`(button)`

Returns `true` if `button` is pressed.

## button_press`(button)`

Returns `true` only if `button` was just pressed.

If the button keeps pressed, during the next `update()` call it will return
`false` again.

## button_up`(button)`

Returns `true` if `button` is released.

## button_press`(button)`

Returns `true` only if `button` was just released.

If the button keeps released, during the next `update()` call it will return
`false` again.

# Emulator Only inputs

When running in emulator (tools) mode, Nibble can handle MIDI, keyboard and
mouse.

## read_keys`()`

Returns a string containing the keys that were pressed.

```lua
local input = read_keys()
```

## read_midi`()`

Reads midi messages from any connected MIDI controllers (or DAW).

```lua
local midi_messages = read_midi()

for _, msg in ipairs(midi_messages) do
    local cmd = math.floor(msg[1]/16)
    
    ...
end
```

## mouse_position`()`

Gets the current mouse position

```lua
local x, y =  mouse_position()
```

## mouse_button_down`(button)`
## mouse_button_press`(button)`
## mouse_button_release`(button)`
## mouse_button_up`(button)`

Can be used in the same way as the default `button_down`, `button_press`,
`button_release`, `button_up`, but with these mouse buttons:

- MOUSE_RIGHT
- MOUSE_LEFT
