#!/bin/sh
cd $HOME
if [ ! -e ~/.nodebrew ]; then
  curl -L git.io/nodebrew | perl - setup
fi

source .bash_profile
