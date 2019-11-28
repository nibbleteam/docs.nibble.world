---
id: NOM
title: Building User Interfaces with NOM
---

NOM, or *Nibble Object Model* is a core strength of Nibble.

It allows the quick prototyping and development of graphical UIs.

NOM is part of the `nibui` framework. To use it, you need to import it into your
app:

```lua
local NOM = require 'nibui.NOM'
```

NOM works by translating a *description* of an user interface into the actual interface.

The interface can then be rendered and updated with no effort.

## Building a UI

Now, lets create the simplest possible UI with NOM:

```lua
local NOM = require 'nibui.NOM'

local ui = NOM:new({
    x = NOM.left, y = NOM.top,
    w = NOM.width, h = NOM.height,
    background = 6,
})

function draw()
    ui:draw()
end

function update(dt)
    ui:update(dt)
end
```

And that's it, now we can focus on working in our UI description (which can even
be imported in another file), without changing the actual app code. This is
where NOM shines.

## Adding text

NOM's UI description is composed of several Widgets. Each Widget is a Lua table
containing any number or `properties` (which can be dynamic and animated!) and
also other nested Widgets.

```lua
local ui = NOM:new({
    x = NOM.left, y = NOM.top,
    w = NOM.width, h = NOM.height,
    background = 6,
    content = "Hello World!"
})
```

## Dynamic properties 

*Every* property in a Widget is dynamic and, in the case of numbers, tweened.

We could, for example, make the text dynamic:

```lua
local ui = NOM:new({
    x = NOM.left, y = NOM.top,
    w = NOM.width, h = NOM.height,
    background = 6,
    content = NOM.fn(function (widget)
        return tostring(time())
    end)
})
```

Or nest another Widget and make it move in circles:

```lua
local ui = NOM:new({
    x = NOM.left, y = NOM.top,
    w = NOM.width, h = NOM.height,
    background = 6,
    
    {
        x = NOM.fn(function (w) return math.cos(clock())*50 end),
        y = NOM.fn(function (w) return math.sin(clock())*50 end),
        w = 10, h = 10,
        
        background = 12,
    }
})
```

## Events and animations

NOM is still more powerfull, allowing you to respond to user actions and animate
properties.

Building on the previous examples, you can, using the `onclick` handler (notice
the `:use('cursor')` statement, it enables the mouse cursor):

```lua
local ui = NOM:new({
    x = NOM.left, y = NOM.top,
    w = NOM.width, h = NOM.height,
    background = 6,
    content = "Click Me!",
    
    onclick = function(self)
        self.content = "Yay!"
    end
}):use('cursor')
```

To animate any numeric property with a lerp (inear interpolation), you only need
to tell the animation time:

```lua
local ui = NOM:new({
    x = NOM.left, y = NOM.top,
    w = NOM.width, h = NOM.height,
    background = 6,
    content = "Click Me!",
    
    onclick = function(self)
        self.content = "Yay!"
        self.background = {12, 0.5}
    end
}):use('cursor')
```

This will animate the `background` property to a value of 12 in 0.5s.

You can also use other types of interpolation.

Even already dynamic properties can be animated:

```lua
local ui = NOM:new({
    x = NOM.left, y = NOM.top,
    w = NOM.width, h = NOM.height,
    background = 6,
    content = "Click Me!",
    
    onclick = function(self)
        self.content = "Yay!"
        self.background = {12, 0.5}
        
        self.x = {self.x+10, 0.5}
    end
}):use('cursor')
```

## Using `NOM.parent` and `NOM.self`

NOM is all about acessing parent properties.

When you use `NOM.left` or `NOM.width`, that's just an alias for `NOM.parent.x`
and `NOM.parent.w`. Any other properties can be accessed this way.

Properties of the Widget itself can be acessed through `NOM.self`.
