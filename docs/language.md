---
id: language
title: Nibble Lua
---

The main difference between conventional Lua 5.1 and Nibble's Lua is that some
operators have been added and some functions have been renamed.

## Operators

### `+=`

```lua
a = a + 10

-- Shortcut
a += 10
```

### `-=`

```lua
a = a - 10

-- Shortcut
a -= 10
```

### `*=`

```lua
a = a * 10

-- Shortcut
a *= 10
```

### `/=`

```lua
a = a / 10

-- Shortcut
a /= 10
```

## Renamed functions

### `insert`

`table.insert` is just `insert`.

### `remove`

`table.remove` is just `remove`.

### `unwrap`

`unpack` has been renamed to `unwrap`.

## Added functions

### `new`

`new` can be used to set the `__index` metatable method in an object with a
readable syntax:

```lua
local Object = {}

function Object:new(a, b)
    return new(Object, {
        a = a,
        b = b
    })
end
```

### `copy`

Copy can be used to create a deep copy of any table.

```lua
local new_tbl = copy(tbl)
```
