function docker-machine-env {
  eval $(docker-machine env $1)
}
alias dkmenv='docker-machine-env'

function docker-rmi-none {
  docker images | awk '/<none/{print $3}' | xargs docker rmi
}
alias dkrmi='docker-rmi-none'
