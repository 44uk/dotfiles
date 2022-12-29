export EDITOR=/usr/bin/vi

# dotfiles/script {
export PATH=~/dotfiles/bin:$PATH
# }

# system {
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH
# }

# Home {
export PATH=~/usr/local/bin:~/usr/local/sbin:~/bin:$PATH
# }

# Completion {
if type brew > /dev/null 2>&1; then
  if [ -f $(brew --prefix)/etc/profile.d/bash_completion.sh ]; then
    . $(brew --prefix)/etc/profile.d/bash_completion.sh
  fi
fi
# }

# rbenv {
if [ -e ~/.rbenv ]; then
  export PATH=$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH:$PATH
  eval "$(rbenv init -)"
fi
# }

# nodenv {
if [ -e ~/.nodenv ]; then
  export PATH=$HOME/.nodenv/bin:$PATH
  eval "$(nodenv init -)"
fi
# }

# volta {
if [ -e ~/.volta ]; then
  export VOLTA_HOME=$HOME/.volta
  export PATH=$VOLTA_HOME/bin:$PATH
fi
# }

# pyenv {
if [ -e ~/.pyenv ]; then
  export PATH=$HOME/.pyenv/bin:$PATH
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi
# }

# goenv {
if [ -e ~/.goenv ]; then
  export GOENV_ROOT="$HOME/.goenv"
  export PATH="$GOENV_ROOT/bin:$PATH"
  export GOPATH="$HOME/.go"
  export PATH="$PATH:$GOPATH/bin"
  eval "$(goenv init -)"
fi
# }

# phpbrew {
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
# }

# flutter {
if [ $HOME/flutter ]; then
  export PATH=$PATH:$HOME/flutter/bin
fi
# }

# Java {
# if [ -d /Library/Java/Home/ ]; then
#   export JAVA_HOME=/Library/Java/Home/
#   export PATH=$JAVA_HOME/bin:$PATH
# fi
# pyenv {
if [ -e ~/.pyenv ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi
# }
# }
