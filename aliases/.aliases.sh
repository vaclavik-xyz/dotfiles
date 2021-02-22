###############################
# ZYPPER
###############################

## update repo & flatpak 
alias update="sudo zypper dup -y && sudo flatpak update -y"

## remove including dependencies
alias remove="sudo zypper rm -u"

## install
alias install="sudo zypper in"

###############################
# SYSTEM
###############################

## ls
alias ls='ls -F -h --color=always -v --author --time-style=long-iso'

## ls correction
alias sl='ls -F -h --color=always -v --author --time-style=long-iso'

## Functions


### perform 'ls' after 'rm' if successful
# rmls() {
#   rm "$*"
#   RESULT=$?
#   if [ "$RESULT" -eq 0 ]; then
#     ls
#   fi
# }
#
# alias rm='rmls'

### perform 'ls' after 'cd' if successful
cdls() {
  builtin cd "$*"
  RESULT=$?
  if [ "$RESULT" -eq 0 ]; then
    ls
  fi
}

alias cd='cdls'

## colorful grep with numbers
alias grep="grep -n --color"

## create parent directory
alias mkdir="mkdir -pv"

## list contents of dir, sorted by size
alias lt="ls --human-readable --size -1 -S --classify"

## copy using rsync with progress bar
alias cpv="rsync -ah --info=progress2"

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'

## resume wget by default
alias wget="wget -c"

## logout
alias logout="gnome-session-quit --no-prompt"

# Permissions

## if user is not root, pass all commands via sudo
alias reboot="sudo reboot"   

###############################
# FILES
###############################

## config files sourcing
alias srcz="source $HOME/.zshrc"
alias srcb="source $HOME/.bashrc"
# reload tmux environment
alias srct="tmux source $HOME/.tmux.conf"

# cd to home
alias hom="cd $HOME/"

###############################
# TMUX
###############################

# attaches tmux to the last session; creates a new session if none exists.
alias t='tmux attach || tmux new-session'

# attaches tmux to a session (example: ta portal)
alias ta='tmux attach -t'

# detach from session and return to normal shell
alias td='tmux detach'

# creates a new session
alias tn='tmux new-session'

# lists all ongoing sessions
alias tl='tmux list-sessions'

