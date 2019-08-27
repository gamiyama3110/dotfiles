#!/bin/bash

THIS_DIR=$(cd $(dirname $0); pwd)
cd $THIS_DIR

for f in .??*
do
  [[ "$f" == ".git" ]] && continue
  [[ "$f" == ".DS_Store" ]] && continue
  [[ "$f" == ".profile" ]] && continue

  # echo $THIS_DIR/"$f"
  ln -snfv $THIS_DIR/"$f" ~/
done

## setup brew
if !(type "brew" > /dev/null 2>&1);
  then $THIS_DIR/etc/setup/bash.sh
fi
brew bundle cleanup --global


echo "Install Finished." | cowsay
# END
