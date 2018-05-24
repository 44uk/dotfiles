#!/bin/bash
if [ ! -e ~/.goenv ]; then
  git clone https://github.com/syndbg/goenv.git --depth 1 ~/.goenv
fi
