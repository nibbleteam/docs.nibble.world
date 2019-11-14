---
id: NOM_ref
title: NOM Reference
---

## Widget Properties

## background

Color index for the background, in the range 0-127.

A sprite can be loaded by setting to a table with two entries in the form `{
sprite_x, sprite_y }`.

A custom sprite can be loaded by setting to a table with four entries in the form `{
sheet_x, sheet_y, sprite_w, sprite_h }`.

## cmap

Color map for text. In the format:

```lua
{
    {color, to_color},
    {color, to_color}
}
```

The default font uses color 15 with 7 for shading so one could change its color
by using:

```lua
cmap = {
    { 15, 14 },
    { 7, 6 }
}
```

## content

A string of text to be rendered inside the component.

## text_align

Aligns the text horizontally. Can be one of:

- `"left"`
- `"center"`
- `"right"`

## vertical_align

Aligns the text vertically. Can be one of:

- `"top"`
- `"middle"`
- `"bottom"`

## text_palette

Palette used for drawing text strings.

## paddding_top, padding_bottom, padding_left, padding_right

Offsets the `content` text.

## palette

Palette used for backgrounds.

## x, y

Position of the Widget.

## w, h

Size of the Widget.

## radius

Border radius. Use to get curved borders.
