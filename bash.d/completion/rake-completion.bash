# quoted from: http://pastie.org/217324
export COMP_WORDBREAKS=${COMP_WORDBREAKS/\:/}
_rakecomplete() {
  COMPREPLY=($(compgen -W "`rake -s -T | awk '{{print $2}}'`" -- ${COMP_WORDS[COMP_CWORD]}))
  return 0
}
complete -o default -o nospace -F _rakecomplete rake
