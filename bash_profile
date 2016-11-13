
PLATFORM=$(uname)

if [ $PLATFORM = Darwin ]; then
  export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

  export ECLIPSE_HOME=/Applications/Eclipse.app/Contents/Eclipse
  export ANDROID_HOME=$HOME/Library/android/sdk

  GNUTOOLS=/usr/local/opt/coreutils/libexec/gnubin

  # update path
  export PATH="$GNUTOOLS:$PATH:$HOME/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ACTIVATOR_HOME"
  export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

  # Postgres
  PGDATA=/usr/local/var/postgres
  alias pg-start='pg_ctl start -D $PGDATA > /dev/null'
  alias pg-stop='pg_ctl stop -D $PGDATA'

  # MongoDB
  MONGO_CONF=/usr/local/etc/mongod.conf
  alias start-mongod='mongod -f $MONGO_CONF'

  # hide and show hidden files
  alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
  alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
fi

### VARIABLES ### 
ACTIVATOR_HOME=/opt/activator-1.3.5-minimal
PYENV="$HOME/.pyenv"


### SOURCES ###
for conf in profile bash_aliases; do
  [[ -f "$HOME/.$conf" ]] && source "$HOME/.$conf"
done


### EXPORTS ###

# setup scala
export SCALA_HOME=/usr/local/opt/scala

# setup golang
export GOROOT=/usr/local/go
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"

## rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

## node
export NODE_PATH=/usr/local/lib/node_modules/

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


### ALIASES ###
