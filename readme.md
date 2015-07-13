# Sherman's Dotfiles

This is a collection of configurations for my tools. I install this
environment on any machines I use.

## Installation

1. Log in as the user who will have the dotfiles installed.
2. Clone this repo to a directory. The configurations will be symlinked,
   so this directory is not temporary.
3. Run the `install.sh` script. 

This installs everything to your home directory. The files are symlinked
from the cloned repo, so you should not remove that directory.

## Contents

### Vim + Tmux

I use Vim and Tmux in bash. That's a large portion of my environment
when programming.

I started with Tmux, and then switched from Sublime to Vim. This is
thanks to the influence of some friends and former coworkers.

### i3wm

I have used the i3 window manager and I think it is a really good step
forward, but I am currently using Gnome Classic again. I have had some
difficulty running i3 on my current machine, so until I figure it out,
Gnome is back.

### git

I have my global .gitignore stored here. I also use a `git-prompt.sh`
script which adds git awareness to my bash prompt. It shows what branch
is currently checked out and some status markers when I navigate a git
repo.

## Dependencies

* Ag - The silver searcher is used with CtrlP in Vim, and it is useful
  by itself on the command line as a grep replacement. On ubuntu 14 you
can install it with apt-get, but on 12 it is more difficult. I wrote a
short install script to follow the steps in the repo for building from
source.  https://github.com/ggreer/the_silver_searcher

* git - I use git extensively, so this configuration probably doesn't
  work without git installed.

* i3wm - I have written a number of utility scripts to improve my i3
  experience, and they are not useful outside of i3.

* Vim, Tmux, and numerous plugins from github.

## Thanks

The following people either helped me figure out some of this stuff or
have simply shown me what is possible with their own configurations.

* https://github.com/andrewdhazlett
* https://github.com/rosshadden
* https://github.com/oppenlander
* https://github.com/rjhilgefort

Also thanks to the community on the Stack Exchange sites. Stack Exchange
has surpassed Google as the most tranformative set of websites for my
work.

