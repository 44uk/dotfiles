# dotfiles/script {
export PATH=~/dotfiles/bin:$PATH
# }

# Home {
export PATH=~/usr/local/bin:$HOME/usr/local/sbin:$HOME/bin:$PATH
# }

# rbenv {
if [ -e ~/.rbenv ]; then
  export PATH=$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH
  eval "$(rbenv init -)"
fi
# }

# pyenv {
if [ -e ~/.pyenv ]; then
  export PATH=$HOME/.pyenv/bin:$PATH
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi
# }

# volta {
if [ -e ~/.volta ]; then
  export VOLTA_HOME=$HOME/.volta
  export PATH=$VOLTA_HOME/bin:$PATH
fi
# }

# nodenv {
if [ -e ~/.nodenv ]; then
  export PATH=$HOME/.nodenv/bin:$PATH
  eval "$(nodenv init -)"
fi
# }
