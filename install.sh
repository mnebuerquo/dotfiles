#!/bin/sh

INSTALLDIR=$(pwd)

# make bin directory first
echo "Creating $HOME/bin directory if it doesn't exist."
mkdir -p "$HOME/bin"

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
mkdir -p "$HOME/.vim/backup/"
mkdir -p "$HOME/.vim/swap/"
#mkdir -p "$HOME/.vim/rc/"
# vimrc file
ln -s -f "$(pwd)/vim/vimrc" "$HOME/.vimrc"

# directory with more rc files
# be careful not to make a recursive symlink
# linking on osx isn't the same, so be careful with path
#ln -s -f "$(pwd)/vim/rc" "$HOME/.vim/rc"
cd "$HOME/.vim"
ln -s -f "$INSTALLDIR/vim/rc"
cd "$INSTALLDIR"

echo "Never pipe to sh!"
if [ ! -f neobundle-install.sh ]; then
wget -O neobundle-install.sh https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh
DORM=1
fi
sh neobundle-install.sh
if [ $DORM ]; then
rm neobundle-install.sh
fi
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

# install .profile
echo "Installing ~/.profile..."
ln -s -f "$(pwd)/bash/profile" "$HOME/.profile"
echo "~/.profile"
echo 

# install tmux.conf
echo "Installing ~/.tmux.conf..."
ln -s -f "$(pwd)/tmux/tmux.conf" "$HOME/.tmux.conf"
ln -s -f "$(pwd)/tmux/tmux-linux.conf" "$HOME/.tmux-linux.conf"
ln -s -f "$(pwd)/tmux/tmux-macosx.conf" "$HOME/.tmux-macosx.conf"
echo "~/.tmux.conf"
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
echo "Installed ~/bin/"
echo

