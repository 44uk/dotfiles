function docker-machine-env {
  eval $(docker-machine env $1)
}
alias dkmenv='docker-machine-env'

function docker-rmi-none {
  docker images | awk '/<none/{print $3}' | xargs docker rmi
}
alias dkrmi='docker-rmi-none'

function pysrv {
  python -m http.server 8100
}

function rbsrv {
  ruby -rwebrick -e 'WEBrick::HTTPServer.new(:DocumentRoot => "./", :Port => 8100).start'
}

function reshell {
  exec $SHELL --login
}
