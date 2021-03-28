#!/usr/bin/env bash

if !(type "brew" > /dev/null 2>&1); then
    # https://brew.sh/index_ja
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
# brew upgrade

brew bundle --global
if [ "$WORKING_MODE" ]; then
    brew bundle --file .Brewfile_work
fi

brew cleanup
