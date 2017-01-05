export DOTFILE_ROOT=$HOME/dotfiles
for rc in $(find $DOTFILE_ROOT/bash.d/ -type f -name *.bash); do
  source $rc
done

export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
