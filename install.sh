#!/bin/bash

# FRESH INSTALL OF UBUNTU SCRIPT
# SETUP ssh-keygen + github
USER=bravo
PROJECT=$HOME/personal/dotfiles

mkdir $HOME/personal
mkdir $HOME/work

#vim and stuff i dont want to do twice
sudo apt install vim -y
sudo apt remove nano -y #yuck
echo '' >> $HOME/.bashrc
echo '#vim default editor' >> $HOME/.bashrc
echo 'export VISUAL=vim' >> $HOME/.bashrc
echo 'export EDITOR="$VISUAL"' >> $HOME/.bashrc

#git and stuff i dont want to google again
sudo apt install git -y
git config --global user.email ""
git config --global user.name "Birk Johannessen"
git config --global core.editor "vim"
git config --global init.defaultBranch master

#terminalstuff
sudo apt install terminator -y

#configstuff
cd $HOME/.config/ && git clone git@github.com:BirkJohannessen/i3.git
cd $HOME/.config/ && git clone git@github.com:BirkJohannessen/nvim.git
cd $HOME/.config/ && git clone git@github.com:BirkJohannessen/tmux.git

#xinit
sudo apt install xinit -y
# disable graphical.target with tty displaymanager
sudo systemctl set-default multi-user.target
# capslock reboot remap persister - identifier get by "xinput list command"
# cp $PROJECT/etcoverrides/00-keyboard.conf /etc/X11/xorg.conf.d/

#workstuff
cd $HOME/work && git clone git@github.com:BirkJohannessen/machina-birk.git


#installs
# bash $HOME/.config/i3/install.sh
# bash $HOME/.config/nvim/install.sh
# bash $HOME/.config/tmux/install.sh
