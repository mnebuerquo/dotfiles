#!/bin/sh

# configure PS1 for your shell

# color hostname based on server
# http://serverfault.com/a/425657/33170
HOSTNAMECOLOR=$(hostname | od | tr ' ' '\n' | awk '{total = total + $1}END{print 30 + (total % 6)}')

# git-prompt.sh shows current branch in prompt
# https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
source ~/bin/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_STATESEPARATOR=
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\e[${HOSTNAMECOLOR}m\]\]@\h\[\033[00m\]:$(__git_ps1 "[%s]"):\[\033[01;34m\]\w\[\033[00m\]\$ '
