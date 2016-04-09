#########################
# Applications
#########################

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

