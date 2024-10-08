#!/bin/bash

sudo apt install xsel -y
sudo apt install tmux -y
git clone https://github.com/tmux-plugins/tpm $HOME/.config/tmux/plugins/tpm
tmux source $HOME/.config/tmux/tmux.conf



# Hack font from https://www.nerdfonts.com/font-downloads
# copy dl link to replace below.
# replace zip file aswell..
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip \
&& cd ~/.local/share/fonts \
&& unzip Hack.zip \
&& rm Hack.zip \
&& fc-cache -fv
