---
id: colors
title: Colors and Palettes
---

## copy_palette`(pal_a, pal_b)`

Copies palette `pal_a` to palette `pal_b`.

`pal_a` and `pal_b` are in the range 0-7.

```lua
-- Copies palette 0 to palette 1
copy_palette(0, 1)
```

## mask_color`(color)`

Makes `color` transparent.

Color can range from 0-127.

## swap_colors`(color_a, color_b)`

> NOTE: You can "un-swap" a color by swapping with itself: `swap_colors(7, 7)`

Turns `color_a` into `color_b`.

This does not affect areas of the screen which are already in `color_a`.

`color_a` and `color_b` range from 0 to 127.

## swap_screen_colors`(color_a, color_b)`

> NOTE: You can "un-swap" a color by swapping with itself: `swap_screen_colors(7, 7)`

Turns `color_a` into `color_b`.

This changes even colors which are already in the screen.

`color_a` and `color_b` range from 0 to 127.

## rgba_color`(color, value)`

> WARNING: Directly writing to the palette memory is very slow. Your game will
> stutter. Be sure to only use this function at startup or during static loading
> screens.

Sets `color` to a given rgb color.

The alpha channel is treated as binary, 0 will result in transparent, any other
value in a solid color.

This updates colors already in the screen.

```lua
rgba_color(8, '\x00\xfc\xff\xff')
```
