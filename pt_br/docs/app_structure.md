---
id: app_structure
title: Estrutura do Aplicativo
---
Aplicativos Nibble são diretórios com uma estrutura bem simples, nomeados com uma extensão `.nib`.

Eis um exemplo do que você vai encontrar na maioria dos aplicativos:

    music.nib/
    ├── assets
    │   └── sheet.png
    └── main.lua

    1 directory, 2 files


## main.lua

Este é o único arquivo necessário. É o ponto de partida para o seu código.

Você pode criar outros arquivos se quiser, mas eles precisam ser incluidos no `main.lua`.

## assets/

Neste diretório estão armazenados todos os dados do seus jogo. Um jogo também pode ser criado sem essa pasta.

## assets/sheet.png

Esta é a folha de sprites (spritesheet) que é carregada automaticamente quando seu jogo é iniciado.

Ela pode ter `4096x1024`px de tamanho.

Quando você cria um novo aplicativo usando `new`, ele automaticamente cria uma nova folha para você, com a fonte padrão salva nela.
