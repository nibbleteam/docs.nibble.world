---
id: system
title: System Commands
---

## start_app`(path, environment)`

Starts the app located at `path`, with `environment` as env.

Returns the PID of the new app or `nil`.

```lua
local app = start_app("apps/myapp.nib", {
    super = "cool"
})

if app then
    -- Yes!!
end
```

## stop_app`(pid)`

Stops a given app. If `pid` is 0, stop itself.

```lua
stop_app(0)
```

# Pause/Resume 

## pause_app`(pid)`

> WARNING: you cannot pause apps which you did not start

Pause the given app.

## resume_app`(pid)`

> WARNING: you cannot resume apps which you did not start

Resume the given app.

# Message passing/IPC

## send_message`(pid, message)`

The `message` (an arbitrary value) will be sent to the app of PID = `pid`.

It can use `receive_message()` to receive it

## receive_message`()`

Returns the next message or `nil`.
