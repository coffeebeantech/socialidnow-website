#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Convert pngs files from a directory to jpegs files."
  echo "Usage: $0 <dir-source> <dir-target>"
else
  source=$1
  target=$2
  for f in $source/*.png
  do
    basename=`basename $f`
    filename=${basename%.*}
    convert "$f" "$target/$filename.jpg"
  done
fi

