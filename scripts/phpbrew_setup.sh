#!/bin/bash
cd $HOME
if [ ! -e ~/.phpbrew ]; then
  cd /tmp
  curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
  chmod +x phpbrew && mv phpbrew /usr/local/bin/phpbrew
  phpbrew init
  cd -
fi
