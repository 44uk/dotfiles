#/bin/sh
cd $HOME
if [ ! -e ~/.pythonbrew ]; then
  curl -kL http://xrl.us/pythonbrewinstall | bash
fi
