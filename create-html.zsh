#!/usr/bin/env zsh

source ~/.zshrc
jupyter --version

jupyter nbconvert $1 \
--reveal-prefix=reveal.js \
--SlidesExporter.reveal_theme=serif \
--SlidesExporter.reveal_scroll=True  \
--SlidesExporter.reveal_transition=none \


