#
# Provides Docker aliases and functions.
#
# Authors:
#   Eduard Zintz <e@zintz.cc>
#

# Return if requirements are not found.
if (( ! $+commands[docker] )); then
  return 1
fi

# Load dependencies.
pmodload 'helper'

#
# Settings
#

#
# Aliases
#

alias dex="docker exec -i -t"
alias di='docker images'
alias dip='docker-ip'
alias dpa='docker ps -a'
alias dps='docker ps'
alias drd='docker run -d -P'
alias dri='docker run -i -t -P'
alias drm='docker rm'
alias drma='docker rm $(docker ps -a -q)'
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'
alias drmi='docker rmi -f $(docker images -q -a -f dangling=true)'
alias ds='docker stop'
alias dsa='docker stop $(docker ps -a -q)'

alias dc="docker-compose"
alias dcb="docker-compose build"
alias dcd="docker-compose down"
alias dcps="docker-compose ps"
alias dcu="docker-compose up"

alias dm="docker-machine"
alias dmc="docker-machine create"
alias dmip="docker-machine ip"
alias dml="docker-machine ls"
alias dmrc="docker-machine regenerate-certs"
alias dms="docker-machine start"
alias dmu="docker-machine upgrade"

#
# Functions
#
