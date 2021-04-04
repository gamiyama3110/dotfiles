#!/usr/bin/env bash
# homebrewのインストールは手動で行うこと。
# https://brew.sh/index_ja

brew update
# brew upgrade

brew bundle --file Brewfile

if [ "$WORKING_MODE" ]; then
    brew bundle --file Brewfile_work
fi

brew cleanup
