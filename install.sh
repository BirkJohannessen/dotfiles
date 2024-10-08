#!/bin/bash

# prereq: ssh-keygen + github

USER=bravo

if [ "$1" = "fresh" ]; then
    # my folders
    mkdir $HOME/personal
    mkdir $HOME/work

    #give me vim pls
    sudo apt install vim -y
    sudo apt remove nano -y #yuck

    # git
    sudo apt install git -y

    #prefered terminal
    sudo apt install kitty -y

    #xinit
    sudo apt install xinit -y

    # disable graphical.target with tty displaymanager
    sudo systemctl set-default multi-user.target

    # stow
    sudo apt install stow
    cd stow && stow .
elif [ "$1" = "tmux" ]; then
    bash $HOME/.config/tmux/install.sh
elif [ "$1" = "i3" ]; then
    bash $HOME/.config/i3/install.sh
elif [ "$1" = "kitty" ]; then
    bash $HOME/.config/kitty/install.sh
elif [ "$1" = "nvim" ]; then
    bash $HOME/.config/nvim/install.sh
else
	echo "no argument / not valid argument"
	echo "usage:"
	echo "./install fresh"
	echo "downloads apt packages for fresh ubuntu install + more"
	echo "./install tmux/nvim/kitty/i3"
	echo "uses custom install for each tmux/nvim/kitty/i3"
fi
