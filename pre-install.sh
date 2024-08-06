#!/bin/bash

# Check if curl is installed
if [ -f "`which apt`" ]; then
  sudo apt install zsh -y
  sudo apt install curl -y
fi

Check if oh-my-zsh is installed
OMZDIR="$HOME/.oh-my-zsh"
if [ ! -d "$OMZDIR" ]; then
  echo 'Installing oh-my-zsh'
  echo Y | /bin/sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
  echo 'Updating oh-my-zsh'
  /usr/bin/zsh -c "$OMZDIR/tools/upgrade.sh"
fi

# Change default shell
# if [! $0 = "-zsh"]; then
#   echo 'Changing default shell to zsh'
#   chsh -s /bin/zsh
# else
#   echo 'Already using zsh'
# fi
