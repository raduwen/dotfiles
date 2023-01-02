if [ -f $HOME/.keychain/$HOST-sh ]; then
  source $HOME/.keychain/$HOST-sh
fi

if [ -f $HOME/.asdf/asdf.sh ]; then
  . $HOME/.asdf/asdf.sh
fi
