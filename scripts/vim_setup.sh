#!/bin/bash

## move previous .vim/ {
[ -L ~/.vim ] && rm -f ~/.vim
[ -d ~/.vim ] && mv ~/.vim ~/.vim.$(date +%Y%m%d%H%M%S)
## }

# vim dirs Setup {
mkdir -p ~/.vim/undo
## }
