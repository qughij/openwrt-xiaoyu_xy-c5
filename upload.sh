#!/bin/bash

AUTH=$2
DIR=$1

function get_files(){
    for i in `ls $1`
     do
      if [ -d $1"/"$i ]
        then
          get_files $1"/"$i
        else
          echo $1"/"$i
      fi
    done
}
 
for i in `get_files $1`
  do
    curl 
  