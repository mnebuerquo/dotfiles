#!/bin/sh

# use curl to get this url, and store it in ~/bin or something
if [ ! -f ~/bin/git-prompt.sh ]; then
	echo "Installing git-prompt"
	curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh > ~/bin/git-prompt.sh
	echo "Done!"
else
	echo "git-prompt already installed!"
fi

