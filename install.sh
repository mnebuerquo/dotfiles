#!/bin/sh

# add i3 settings
echo "Installing i3 configuration files..."
mkdir -p "$HOME/.i3"
for path in ./i3/* ; do
	echo "${path}"
	file="$(basename "${path}")"
	ln -s -f "$(pwd)/i3/${file}" "$HOME/.i3/${file}"
done
echo "Installed ~/.i3/"
echo 

# install tmux.conf
echo "Installing ~/.tmux.conf..."
ln -s -f $(pwd)/tmux/tmux.conf "$HOME/.tmux.conf"
echo "~/.tmux.conf"
echo 

# make symlinks to all bin scripts
echo "Installing ~/bin..."
mkdir -p "$HOME/bin"
for path in ./bin/* ; do
	echo "${path}"
	if [ -e "${path}" ] && [ -f "${path}" ]; then
		file="$(basename "${path}")"
		#TODO: backup file if not a symlink before removing
		chmod +x "$(pwd)/bin/${file}"
		ln -s -f "$(pwd)/bin/${file}" "$HOME/bin/${file}"
	fi
done
echo "Installed ~/bin/"
echo

