export DOTFILE_ROOT=$HOME/dotfiles
for rc in `find $DOTFILE_ROOT/bash.d/ -type f -name *.bash`; do
  source $rc
done