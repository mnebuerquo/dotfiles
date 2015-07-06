#!/bin/sh

# configure PS1 for your shell

# git-prompt.sh shows current branch in prompt
# https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
source ~/bin/git-prompt.sh

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:$(__git_ps1 "[%s]"):\[\033[01;34m\]\w\[\033[00m\]\$ '
