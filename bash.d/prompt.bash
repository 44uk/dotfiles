if [ -f $HOME/dotfiles/bash.d/completion/bash-completion.bash ]; then
 export PS1='\[\033[01;32m\]\u>\[\033[01;33m\] \w$(__git_ps1) \n\[\033[01;34m\]\$\[\033[00m\] '
else
 export PS1='\[\033[01;32m\]\u>\[\033[01;33m\] \w \n\[\033[01;34m\]\$\[\033[00m\] '
fi
