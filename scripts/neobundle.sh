#!/bin/bash

## move previous .vim/ {
[ -L ~/.vim ] && rm -f ~/.vim
[ -d ~/.vim ] && mv ~/.vim ~/.vim.`date +%Y%m%d%H%M%S`
## }

# vim dirs Setup {
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/tmp
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/plugin

echo '### cloning neobundle for vim...'
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
