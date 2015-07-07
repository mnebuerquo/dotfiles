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

# install vim settings
echo "Installing ~/.vimrc and neoBundle"
mkdir -p "$HOME/.vim"
ln -s -f "$(pwd)/vim/vimrc" "$HOME/.vimrc"
curl -s -S -f https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
echo "neoBundle will install other plugins next time you run vim."
echo "Installed vim files!"
echo

# install .gitconfig
echo "Installing ~/.gitconfig..."
ln -s -f "$(pwd)/git/gitconfig" "$HOME/.gitconfig"
ln -s -f "$(pwd)/git/gitignore" "$HOME/.gitignore"
echo "~/.gitconfig"
sh "$(pwd)/git/install.sh"
echo 

# install .bashrc
echo "Installing ~/.bashrc..."
ln -s -f "$(pwd)/bash/bashrc" "$HOME/.bashrc"
echo "~/.bashrc"
echo 

# install tmux.conf
echo "Installing ~/.tmux.conf..."
ln -s -f "$(pwd)/tmux/tmux.conf" "$HOME/.tmux.conf"
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

