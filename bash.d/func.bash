function docker-machine-switch {
  # docker-machine restart $1
  eval $(docker-machine env $1)
}

alias dkmsw='docker-machine-switch'
