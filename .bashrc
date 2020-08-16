export DOTFILE_ROOT=$HOME/dotfiles
for rc in $(find $DOTFILE_ROOT/bash.d/ -type f -name *.bash); do
  source $rc
done

export ANDROID_SDK_ROOT=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_SDK_ROOT}/tools
export PATH=${PATH}:${ANDROID_SDK_ROOT}/platform-tools
