#!/bin/sh

rsync -avz website/build/nibble/* root@docs.nibble.world:/var/www/html/docs.nibble.world/
