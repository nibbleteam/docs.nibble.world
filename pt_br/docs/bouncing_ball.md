---
id: bouncing_ball
title: Exemplo: Bola Saltitante 
---

Vamos criar um exemplo simples de bola saltitante para entender como o Nibble funciona:

<video width="100%" src="/vid/ball-conv-speedup.mp4" controls></video>

Este é o código-fonte completo do aplicativo:

```lua
-- Ball info

-- Position
local x, y = 0, 0
-- Velocity
local vx, vy = 300, 150
-- Size
local radius = 8
-- Color
local color = 6

-- Draw the ball on the screen
function draw()
  clear(1)

  fill_circ(x, y, radius, color)
end

function update(dt)
  -- Move the ball
  x += vx*dt
  y += vy*dt

  local max_x = 400-radius
  local min_x = radius
  local max_y = 240-radius
  local min_y = radius

  -- Hit right wall
  if x >= max_x then
    x = max_x
    vx *= -1
  end

  -- Hit left wall
  if x < min_x then
    x = min_x
    vx *= -1
  end

  -- Hit bottom wall
  if y >= max_y then
    y = max_y
    vy *= -1
  end

  -- Hit top wall
  if y < min_y then
    y = min_y
    vy *= -1
  end
end
```
