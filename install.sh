#!/bin/bash

set -x

# Install Zsh
sudo apt install zsh -y
if [ $? -ne 0 ]; then
    echo "Install zsh failed."
    exit 1
fi

# Install Oh My Zsh
wget https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh -O - | sh
if [ $? -ne 0 ]; then
    echo "Install Oh My Zsh failed."
    exit 1
fi

# Clone zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
if [ $? -ne 0 ]; then
    echo "clone plugin zsh-autosuggestions failed."
    exit 1
fi

# Clone zsh-syntax-highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
if [ $? -ne 0 ]; then
    echo "clone plugin zsh-syntax-highlighting failed."
    exit 1
fi
