fpath=(
  $HOME/.config/zsh/completions(N-/)
  $HOME/.config/zsh/functions/*(N-/)
  $fpath
)

autoload -Uz compinit
compinit

alias ls="ls -GF"
alias la="ls -A"
alias ll="ls -lA"
alias dir="ls -la"

# git
alias g="git"
alias gs="git status"
alias gs="git status"
alias ga="git add"
alias gcm="git commit -m"

# tmux
alias t="tmux"
alias tat="tmux attach -t"
alias tls="tmux ls"
