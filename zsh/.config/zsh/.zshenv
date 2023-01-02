[[ $UID > 0 && $UID == $GID ]] && umask 002 || umask 022

typeset -U path

path=(
  $HOME/.local/bin(N-/)
  /opt/bin(N-/)
  /opt/lua-language-server/bin(N-/)
  /usr/local/bin(N-/)
  /usr/local/sbin(N-/)
  /usr/sbin(N-/)
  /usr/bin(N-/)
  /sbin(N-/)
  /bin(N-/)
  $path
)

if type nvim > /dev/null 2>&1; then
  export EDITOR=nvim
else
  export EDITOR=vim
fi

if [ -f $HOME/.asdf/asdf.sh ]; then
  . $HOME/.asdf/asdf.sh
fi

if [ -f $HOME/.cargo/env ]; then
  . $HOME/.cargo/env
fi
