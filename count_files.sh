#!/bin/bash
function count_files(){  
  local DIR=$1
  local NUMBER_FILES=$(ls $DIR | wc -l)
  echo "${DIR}:"
  echo "$NUMBER_FILES"
}
count_files /etc
count_files /var
count_files /usr/bin
