#!/bin/bash


dir=$1
auth=$2
version=$3

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
 
for i in `get_files $dir`
  do
    curl -T ${i} -u ${auth} "${uplaod_url}${i}?version=${version}"
done
