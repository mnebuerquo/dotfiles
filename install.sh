#!/bin/sh

# add i3 settings
for path in ./i3/* ; do
	echo "{$path}"
	file="$(basename "${path}")"
	ln -s -f "$(pwd)/i3/${file}" "$HOME/.i3/${file}"
done

# install tmux.conf
echo "Installing ~/.tmux.conf..."
if [ -L ~/.tmux.conf ] ; then
	rm ~/.tmux.conf
else
	echo "Backing up old .tmux.conf to tmux.conf.bak"
	mv ~/.tmux.conf ~/tmux.conf.bak
fi
ln -s $(pwd)/tmux/tmux.conf ~/.tmux.conf
echo "Installed ~/.tmux.conf"
echo 

# make symlinks to all bin scripts
echo "Installing ~/bin..."
for path in ./bin/* ; do
	echo "${path}"
	if [ -e "${path}" ] && [ -f "${path}" ]; then
		file="$(basename "${path}")"
		#TODO: backup file if not a symlink before removing
		chmod +x "$(pwd)/bin/${file}"
		ln -s -f "$(pwd)/bin/${file}" "$HOME/bin/${file}"
	fi
done
echo "Installed ~/bin"
echo

