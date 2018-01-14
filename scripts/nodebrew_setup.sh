#!/bin/bash
if [ ! -e ~/.nodebrew ]; then
  curl -L git.io/nodebrew | perl - setup
fi
