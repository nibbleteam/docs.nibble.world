---
id: specs
title: Especificações do Nibble
---

# Vídeo

Nibble tem uma tela de `400x240px`, capaz de exibir `24bit` de cor.

Você não pode usar todas essas cores de uma só vez, já que o Nibble
usa `8 paletas de 16 cores cada` (totalizando 128 cores).

Cada aplicação Nibble pode carregar uma única spritesheet de `4096x1024px`.

# Áudio

Nibble pode reproduzir áudio sintetizado em FM em `8 canais` `polifônicos`
em `monaural` (mono) `4op`, com um efeito `per-channel delay` opcional.

É possível conectar o emulador Nibble diretamente a um `DAW`,
usando MIDI, ou a um `controlador MIDI`.

# Entradas

Nibble usa um único botão direcional em cruz `d-pad`, `dois botões de face (face buttons)`
e `dois botões de ombros (shoulder buttons)` como botões de jogo principais.
Também há um botão de `pausa/menu` não-programável.

Ao rodar no modo SDK, o Emulador Nibble também pode ser operado por teclado e mouse.