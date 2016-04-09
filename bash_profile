
PLATFORM=$(uname)
# setup java
# export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)
export SCALA_HOME=/usr/local/opt/scala

# setup golang
export GOROOT=/usr/local/go
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"

if [ $PLATFORM = Darwin ]; then
  export ECLIPSE_HOME=/Applications/Eclipse.app/Contents/Eclipse
  export ANDROID_HOME=$HOME/Library/android/sdk
fi

# variables 
ACTIVATOR_HOME=/opt/activator-1.3.5-minimal
PYENV="$HOME/.pyenv"
GNUTOOLS=/usr/local/opt/coreutils/libexec/gnubin

# update path
export PATH="$GNUTOOLS:$PATH:$HOME/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ACTIVATOR_HOME"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export NODE_PATH=/usr/local/lib/node_modules/

for conf in profile bash_aliases; do
  [[ -f "$HOME/.$conf" ]] && source "$HOME/.$conf"
done

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
