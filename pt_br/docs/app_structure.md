---
id: app_structure
title: App Structure
---

Nibble apps are a simple directory with the extension `.nib`.

Here is an example of what you will find in most apps.

    music.nib/
    ├── assets
    │   └── sheet.png
    └── main.lua

    1 directory, 2 files


## main.lua

This is the only file that is needed. It's the entrypoint for your code.

You can have other files, but they must be included from `main.lua`.

## assets/

In this directory, all the game data is stored. A game can be created without it.

## assets/sheet.png

This is the spritesheet that is automatically loaded when you game starts.

It can be at most `4096x1024`px in size.

When you create an app using `new`, it automatically creates a new sheet for you
with the default font in it.
