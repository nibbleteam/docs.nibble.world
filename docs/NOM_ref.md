---
id: NOM_ref
title: NOM Reference
---

        shadow_color = 0, border_color = 0, background = 0, color = 15,
        -- Position and size
        x = 0, y = 0, z = 0, w = 0, h = 0, radius = 0,
        cmap = {
            {15, 15},
            {7, 7},
        },
        -- Content
        content = '', text_align = 'center', vertical_align = 'middle',
        text_palette = 0,
        palette = 0,
        -- Padding
        padding_top = 0, padding_left = 0, padding_bottom = 0, padding_right = 0,

## Widget Properties

## background

Color index for the background, in the range 0-127.

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

## x, y

Position of the Widget.

## w, h

Size of the Widget.





