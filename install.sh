#!/bin/sh

# Install fonts
cd ~
mkdir .fonts
which wget || sudo pacman -S wget
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/JetBrainsMono.zip
unzip JetBrainsMono.zip -d ~/.fonts
rm -rf JetBrainsMono.zip


# Install starship
sudo pacman -S starship
echo 'eval "$(starship init bash)"' >> ~/.bashrc


# Add preset
[[ ! -f ~/.config/starship.toml ]] && touch ~/.config/starship.toml
starship preset nerd-font-symbols > ~/.config/starship.toml


# Source .bashrc file
source .bashrc