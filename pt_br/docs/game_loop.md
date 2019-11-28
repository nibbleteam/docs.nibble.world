---
id: game_loop 
title: Game Loop
---

A freshly created app will not do anything. There are three functions you can
define so the app does something visible.

## draw()

```lua
function draw()
end
```

This function can be used to draw on the screen, using Nibble's [drawing commands](docs/video).

## update(dt)

```lua
function update(dt)
end
```

Update can be used to move things around on the screen, check for pressed
buttons or do any work you need which is not drawing to the screen.

Notice the `dt` parameter, which is the number of seconds since the last
`update(dt)` call.

Since nibble runs locked at 30 FPS, you should expect that to always be close to 1/30s.

## init()

```lua
function init(dt)
end
```

This is the least used function, you probably wont use it untill your project is
reasonably big.

It is used to initialize values, for example, loading custom assets or preparing algorithms.
