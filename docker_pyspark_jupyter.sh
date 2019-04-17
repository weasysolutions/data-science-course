#!/bin/bash

docker_container='jupyter_lab_pyspark_data_science_course'


docker run --rm --name="$docker_container" \
  -v "$PWD":/workdir \
  -w /workdir \
  -p 8888:8888 \
  -e JUPYTER_ENABLE_LAB=yes \
  -e NB_USER=weasysolutions \
   jupyter/pyspark-notebook
