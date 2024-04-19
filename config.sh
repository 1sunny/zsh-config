#!/bin/bash

set -x

cp my.zsh-theme ~/.oh-my-zsh/themes/
cp .zshrc ~
chsh -s /bin/zsh
echo "reopen terminal to use zsh !!!"
