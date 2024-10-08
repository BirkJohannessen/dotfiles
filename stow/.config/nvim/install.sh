#see https://github.com/neovim/neovim/wiki/Building-Neovim
#and https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites
#clipboard functio
sudo apt install xclip -y
#Ubuntu depenencies
sudo apt-get install ninja-build gettext cmake unzip curl -y
pip install cmake
cd $HOME/Public && git clone https://github.com/neovim/neovim
cd $HOME/Public/neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
cd $HOME/Public/neovim/build && sudo cpack -G DEB && sudo dpkg -i nvim-linux64.deb


#telescope dependencies
sudo apt install ripgrep -y
sudo apt install fd-find

#important basic dependencies
sudo apt install npm -y
sudo apt install python3 -y
sudo apt install python3-pip -y

#treesitter
sudo npm install -g tree-sitter
