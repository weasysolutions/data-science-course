#!/bin/bash

#--to-slides
#jupyter nbconvert $1  $2 $3 \

jupyter nbconvert ./notebooks/*.ipynb $1 $2 \
--reveal-prefix=reveal.js \
--SlidesExporter.reveal_theme=serif \
--SlidesExporter.reveal_scroll=True  \
--SlidesExporter.reveal_transition=none \

mv ./notebooks/*.html presentation/


