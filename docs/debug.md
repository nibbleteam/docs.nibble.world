---
id: debug
title: Debugging Apps
---

When developing more complex apps, it is often important to print out debug
values.

This can be done in three ways.

## debug`(value)`

Execution stops and `value` is displayed in the debug screen.

## terminal_print`(value, ...)`

> NOTE: this is the regular Lua's `print()`.

Prints out values to stdout.

It can be also used to print multiple values:

```lua
terminal_print("a", "b", "c")
```

## terminal_pretty`(value, ...)`

Same as `terminal_print()` but pretty-prints anything. Specially useful when
debugging tables.
