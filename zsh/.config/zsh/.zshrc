fpath=(
  $HOME/.config/zsh/completions(N-/)
  $HOME/.config/zsh/functions/*(N-/)
  $fpath
)

autoload -Uz compinit
compinit
