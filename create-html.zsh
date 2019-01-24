#!/usr/bin/env zsh

#Create an html file .ipynb file

#Flag 1: file namev
#flag 2: '--to slides' || {empty}

#[ -z "$1" ] && echo "file not specified"
#[ -z "$2" ] && echo "WARNING: html type not specified, single slide will be used"


source ~/.zshrc
jupyter --version

jupyter nbconvert $1  $2 $3 \
--reveal-prefix=reveal.js \
--SlidesExporter.reveal_theme=serif \
--SlidesExporter.reveal_scroll=True  \
--SlidesExporter.reveal_transition=none \


