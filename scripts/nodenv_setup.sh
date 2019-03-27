#!/bin/bash
if [ ! -e ~/.nodenv ]; then
  git clone https://github.com/nodenv/nodenv.git ~/.nodenv
  cd ~/.nodenv && src/configure && make -C src && cd -
  mkdir -p "$(nodenv root)"/plugins
  git clone https://github.com/nodenv/node-build.git "$(nodenv root)"/plugins/node-build
fi
