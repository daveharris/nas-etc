#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Move a file from the given path to the local git repo and symlink to original place"
  echo "Usage: move_to_git.sh PATH"
fi

path=$1
filename=$(basename $path)
dir=$(dirname $path)
local_dir=$(echo $dir | cut -d '/' -f 2-)
local_file=$local_dir'/'$filename

mkdir -p $local_dir
sudo mv $path $local_file
sudo ln -s ~harrisdavi3/nas-etc$path $path

