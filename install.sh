#!/bin/bash

THIS_DIR=$(cd $(dirname $0); pwd)
cd $THIS_DIR

for f in .??*
do
  [[ "$f" == ".git" ]] && continue
  [[ "$f" == ".DS_Store" ]] && continue

  # echo $THIS_DIR/"$f"
  ln -snfv $THIS_DIR/"$f" ~/
done
