#!/bin/bash

default_language="en"
search_dir=docs

for entry in "$search_dir"/*
do

  language=`basename "$entry"`
  if [ $language == $default_language ]
  then
    echo "Build Default Language [EN]"
    mkdocs build -f ./docs/$language/mkdocs.yml -d ../../generated/
  fi

  echo "Build $language"
  mkdocs build -f ./docs/$language/mkdocs.yml -d ../../generated/$language

done
