#!/bin/bash
if [ ! -e ~/.rbenv ]; then
  git clone https://github.com/rbenv/rbenv.git ~/.rbenv
  mkdir -p "$(~/.rbenv/bin/rbenv root)"/plugins
  git clone https://github.com/rbenv/ruby-build.git "$(~/.rbenv/bin/rbenv root)"/plugins/ruby-build
fi
