#!/bin/sh

if [ -L ~/.tmux.conf ] ; then
	rm ~/.tmux.conf
else
	mv ~/.tmux.conf ~/tmux.conf.bak
fi
ln -s $(pwd)/tmux/tmux.conf ~/.tmux.conf


