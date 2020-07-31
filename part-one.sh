#!bin/bash

# Setup a new Raspberry Pi
sudo apt update -y
sudo apt upgrade -y

# Change shell to zsh
sudo apt install -y git zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
