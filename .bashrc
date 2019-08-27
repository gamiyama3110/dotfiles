echo "Hellow There." | cowsay

if [[ -s ~/nvm/nvm.sh ]];
  then source ~/.nvm/nvm.sh
fi

# global
export EDITOR=vim
export PS1='\u \W \$ '

export PATH=$HOME/opt/payara41/bin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH

# git
mkdir -p ~/git 2>/dev/null

# golang
export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH
eval "$(goenv init -)"

export GOROOT=~/.go
export GOPATH=$GOROOT
mkdir -p $GOPATH 2>/dev/null
export PATH=$GOROOT/bin:$PATH

if [[ -s ~/.profile ]]; 
  then source ~/.profile
fi
