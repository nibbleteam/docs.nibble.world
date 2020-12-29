---
id: multiplayer
title: Network Multiplayer Commands
---

## find_players`(room_name, number)`

> WARNING: `number` is the total number of players for the game, including the
> current caller to `find_players`.

Finds `number` players from a room named `room_name`. Usually you want
`room_name` to be some form of your's game name, for example:

```lua
find_players("pinball", 2)
```

This will find another player to play *Pinball*. Notice the caller counts as a
player too, so this will find another player besides the one calling the
function for a total of 2 players in the game.

If you have 5-player multiplayer, 5 would be the number in this call.

This function returns nothing, instead when players are found, a message
specifying which players is returned using `receive_network_messsage()`

## receive_network_message`()`

Returns `nil` if there is no new network message or the message sent with
`send_network_message` if there are messages. Can be called multiple times in a
single `update()` cycle to empty the message queue.

If the returned message is a table with a field `operation` with value
"players_found", then this is the return from `find_players`. E.g.:

```lua
{
  operation = "players_found",
  players = {{"networkidhere", "app path here"}, {"networkidhere", "app path here"}, ...}
}
```

## send_network_message`(message, [player])`

Sends a message to everyone in the room, or if `player` is the network id of
some other player, sends a private message to them.

`message` can be any serializable Lua value, i.e.: anything but a function.
