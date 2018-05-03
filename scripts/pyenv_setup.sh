#!/bin/bash
cd $HOME
if [ ! -e ~/.pyenv ]; then
  curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
fi
