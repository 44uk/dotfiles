#!/bin/bash
if [ ! -e ~/.rbenv ]; then
  git clone https://github.com/rbenv/rbenv.git ~/.rbenv
  # add plugins(ruby-build)
  mkdir -p ~/.rbenv/plugins
  git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
fi
