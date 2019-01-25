#!/usr/bin/env zsh

#Create an html file .ipynb file

#Flag 1: file namev
#flag 2: '--to slides' || {empty}

#[ -z "$1" ] && echo "file not specified"
#[ -z "$2" ] && echo "WARNING: html type not specified, single slide will be used"


source ~/.zshrc
#echo  $1 $2
#jupyter nbconvert $1  $2 $3 \

jupyter nbconvert notebooks/lesson*.ipynb $1 $2 \
--reveal-prefix=reveal.js \
--SlidesExporter.reveal_theme=serif \
--SlidesExporter.reveal_scroll=True  \
--SlidesExporter.reveal_transition=none \

mv notebooks/lesson*.html presentation/


