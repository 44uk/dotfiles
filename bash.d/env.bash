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
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
  fi
fi
# }

# rbenv {
if [ -e ~/.rbenv ]; then
  export PATH=$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH:$PATH
  eval "$(rbenv init -)"
fi
# }

# nodebrew {
[ -e ~/.nodebrew/current/bin/nodebrew ] && export PATH=$HOME/.nodebrew/current/bin:$PATH
# }

# pythonbrew {
[ -e ~/.pythonbrew/etc/bashrc ] && source ~/.pythonbrew/etc/bashrc
# }

# Docker {
if type docker-machine > /dev/null 2>&1; then
  eval "$(docker-machine env default)"
fi
# }

# Java {
if [ -d /Library/Java/Home/ ]; then
  export JAVA_HOME=/Library/Java/Home/
  export PATH=$JAVA_HOME/bin:$PATH
fi
# }

