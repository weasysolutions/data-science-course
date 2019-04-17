#!/bin/bash

docker_container='jupyter_lab_data_science_course'

if [[ "$(diff ./requirements.txt ./.requirements.txt)" != "" ]]; then
  echo "...Installing new packages.."
  docker build -t "$docker_container" .
  cp requirements.txt .requirements.txt 
fi

docker run --rm --name="$docker_container" \
  -v "$PWD":/workdir \
  -w /workdir \
  -p 8888:8888 \
  -e JUPYTER_ENABLE_LAB=yes \
  -e NB_USER=weasysolutions \
  $docker_container
  
