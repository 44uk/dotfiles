function share_history {
  history -a
  history -c
  history -r
}

PROMPT_COMMAND='share_history'
shopt -u histappend
export HISTFILESIZE=9999
export HISTSIZE=9999
export HISTIGNORE=pwd:ls:la:ll:fg:history:h
