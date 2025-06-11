# dotfiles/script {
export PATH=~/dotfiles/bin:$PATH
# }

# Home {
export PATH=~/usr/local/bin:$HOME/usr/local/sbin:$HOME/bin:$PATH
# }

# mise {
if command -v mise 1>/dev/null 2>&1; then
  eval "$(/opt/homebrew/bin/mise activate zsh)"
fi
# }
