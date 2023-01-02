[[ $UID > 0 && $UID == $GID ]] && umask 002 || umask 022

typeset -U path

path=(
  $HOME/.local/bin(N-/)
  /opt/bin(N-/)
  /usr/local/bin(N-/)
  /usr/local/sbin(N-/)
  /usr/sbin(N-/)
  /usr/bin(N-/)
  /sbin(N-/)
  /bin(N-/)
  $path
)

if [ -f $HOME/.asdf/asdf.sh ]; then
  . $HOME/.asdf/asdf.sh
fi

if type nvim > /dev/null 2>&1; then
  export EDITOR=nvim
else
  export EDITOR=vim
fi

PROMPT="%{%F{magenta}%}$USER%{%F{cyan}%}@%{%F{blue}%}%m%{%f%}(%D{%Y/%m/%d %H:%M:%S})
$ "
RPROMPT="[%{%F{blue}%}%~%{%f%}]"
