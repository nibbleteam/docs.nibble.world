---
id: game_loop 
title: Loop do Jogo
---

Um aplicativo recém-criado não fará nada. Existem três funções que você pode definir
para que o aplicativo faça algo perceptível.

## draw()

```lua
function draw()
end
```

Esta função pode ser usada para desenhar na tela, usando os [comandos de desenho](docs/video) do Nibble.

## update(dt)

```lua
function update(dt)
end
```

Update pode ser usado para mover coisas na tela, verificar botões pressionados
ou fazer qualquer outro trabalho que você precise fazer, exceto desenhar na tela.

Perceba o parâmetro `dt`, que é o número de segundos desde a última chamada à função `update(dt)`.

Como o Nibble roda a 30 quadros de animação por segundo (30FPS) travados, você deve esperar que esse tempo seja próximo de 1/30s.

## init()

```lua
function init(dt)
end
```

Esta é a função menos utilizada. Você provavelmente não a usará até que o seu projeto esteja razoavelmente grande.

Esta função serve para inicializar valores. Por exemplo, carregar assets personalizados ou preparar algoritmos.