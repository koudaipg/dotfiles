#!/bin/sh

sudo apt update -y

# zsh
sudo apt install zsh -y
chsh -s /usr/bin/zsh

cd
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
source ~/.zshrc
zinit self-update
zinit light zdharma/fast-syntax-highlighting
zinit light paulirish/git-open


#pip
sudo apt install -y python-pip
pip install --user powerline-shell

# powerline
cd
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
chmod +x install.sh
./install.sh
cd ..
rm -rf fonts

cd
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

cd
mkdir -p ~/.cache/dein
cd ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
