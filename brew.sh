#!/usr/bin/env bash
# homebrewのインストールは手動で行うこと。
# https://brew.sh/index_ja

brew update
# brew upgrade

brew bundle --file Brewfile

brew cleanup
