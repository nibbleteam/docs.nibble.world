---
id: video
title: Drawing Commands
---

## clear`(color)`

Clears the entire screen to `color`, which can be a number from 0-128.

Numbers from 0 up to 15 are in the first palette, 16-31 in the second etc.

## sprite`(x, y, sprite_x, sprite_y, palette)`

> WARNING: `sprite_x`, `sprite_y` are NOT in pixels. They are in sprites, which
> are 16x16.

Draws a sprite found in the spritesheet at `sprite_x`, `sprite_y` in the screen
at `x`, `y`.

The `palette` is optional and defaults to 0 (the first palette).

## custom_sprite`(x, y, sheet_x, sheet_y, sprite_w, sprite_h, palette)`

> WARNING: `sheet_x` and `sheet_y` are in pixels.

Draws a custom sized sprite measuring `sprite_w` by `sprite_h` from the
`sheet_x`, `sheet_y` position in the spritesheet to `x`,`y` in the screen.

The `palette` is optional and defaults to 0 (the first palette).

## print`(text, x, y, palette)`

Draws `text` at `x`, `y` using (optionally) `palette`.

## measure`(text)`

Returns the width that `text` would have if printed to the screen.

## start_recording`(file_name)`

Start recording the screen to `file_name`.

## stop_recording`()`

Stops the current recording.

## get_pixel`(x, y)`

Returns the color of a pixel in the screen.

## put_pixel`(x, y, color)`

Sets the color of a pixel in the screen.

## clip`(x, y, w, h)`

Clip all drawing operations to the specified region of the screen.

## fill_rect`(x, y, w, h, color)`

Draws a filled rectangle with `color` at `x`, `y`, of size `w`x`h`.

## fill_circ`(x, y, radius, color)`

Draws a filled circle with `color` at `x`, `y`, of radius `radius`.

## fill_tri`(x1, y1, x2, y2, x3, y3, color)`

Draws a triangle with `color` and the points (`x1`, `y1`), (`x2`, `y2`), (`x3`, `y3`).

## fill_quad`(x1, y1, x2, y2, x3, y3, x4, y4, color)`

Draws a quad with `color` and the points (`x1`, `y1`), (`x2`, `y2`), (`x3`,
`y3`), (`x4`, `y4`).

## line`(x1, y1, x2, y2, color)`

Draws a line between the two points with `color`.

## rect`(x, y, w, h, color)`

Same as `fill_rect` but writeframe only.

## circ`(x, y, radius, color)`

Same as `fill_circ` but writeframe only.

## tri`(x1, y1, x2, y2, x3, y3, color)`

Same as `fill_tri` but writeframe only.

## fill_quad`(x1, y1, x2, y2, x3, y3, x4, y4, color)`

Same as `fill_quad` but writeframe only.

## mouse_cursor`(x, y, w, h, hot_x, hot_y, pal)`

Sets the area defined by `x`, `y`, `w`, `h` as the native cursor when running in
emulator mode. Uses palette `pal` or defaults to 0.

This allows for a low-latency perception of input even at 30fps.

`hot_x` and `hot_y` are the coordinates inside the selected sprite region that
will be aligned with the actual cursor. Defaults to `0, 0`.
