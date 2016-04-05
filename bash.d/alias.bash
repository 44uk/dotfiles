alias ls='ls -hFG'
alias ll='ls -l'
alias la='ls -al'

alias vihosts='sudo vi /etc/hosts'

alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

alias higre='history | grep'
alias psgre='ps aux | grep'
alias ps='ps aux'

alias h='history'
alias j='jobs -l'
alias du='du -h'
alias tailf='tail -f'

# tmux {
alias ta='tmux attach'
#

# git {
alias g='git'
alias gst='git status'
alias gci='git commit'
alias gau='git add -u'
alias ginit='git init && git ci -m"initialize repository with allow empty" --allow-empty'
# }

# docker {
alias dk='docker'
alias dkm='docker-machine'
alias dkc='docker-compose'
# }

# Ruby on Rails {
alias bui='bundle install'
alias buu='bundle update'
alias buc='bundle clean --force'
alias bue='bundle exec'
# }

# Switch displaying hidden files for Finder {
alias finder-show-dotfiles="defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder"
alias finder-hide-dotfiles="defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder"
# }

