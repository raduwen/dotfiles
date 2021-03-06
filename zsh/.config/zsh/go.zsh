export GOROOT=`go env GOROOT`
export GOPATH=$HOME/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

if [ ! -d $GOPATH ]; then
  mkdir $GOPATH
fi

if [ ! -x "`which peco`" ]; then
  echo 'installing peco...'
  go get github.com/peco/peco/cmd/peco
fi

if [ ! -x "`which ghq`" ]; then
  echo 'installing ghq...'
  go get github.com/motemen/ghq
fi

# if [ ! -x "`which git-xlsx-textconv`" ]; then
#   echo 'installing git-xlsx-textconv'
#   go get github.com/tokuhirom/git-xlsx-textconv
# fi
# 
if [ ! -x "`which hget`" ]; then
  echo 'installing hget'
  go get github.com/huydx/hget
fi

if [ ! -x "`which emo`" ]; then
  echo 'installing emo'
  go get github.com/pocke/emo
fi

if [ ! -x "`which volt`" ]; then
  echo 'installing volt'
  go get github.com/vim-volt/volt
fi
