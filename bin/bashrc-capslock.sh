#!/bin/sh

if [ "$OSTYPE" = "darwin"* ]; then
	# use xmodmap to install the capslock mapping
	xmodmap ~/.i3/xmodmap &> /dev/null
	# turn off capslock if it's on already
	~/bin/CAPSLOCKOFF
fi
