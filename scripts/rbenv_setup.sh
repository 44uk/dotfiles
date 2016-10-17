#!/bin/bash
cd $HOME
if [ ! -e ~/.rbenv ]; then
  git clone git://github.com/sstephenson/rbenv.git .rbenv

  # add plugins(ruby-build)
  mkdir -p ~/.rbenv/plugins && cd ~/.rbenv/plugins
  git clone git://github.com/sstephenson/ruby-build.git
fi
