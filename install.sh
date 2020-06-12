# TODO: Convert to makefile

#!/bin/bash

export WORKSPACE=$HOME/src
mkdir -p $WORKSPACE

# install home brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install \
     ghq ripgrep fzf autojump direnv emacs tmux  mackup oath-toolkit watch wget jq \
     ktlint terraform jmeter \
     stern golang kubernetes-cli kubectx kustomize skaffold helm operator-sdk# for kubernetes

brew tap homebrew/cask-fonts homebrew/cask-drivers
brew cask install \
     docker jetbrains-toolbox font-source-code-pro alacritty lens \
     visualvm \
     slack spectacle kensington-trackball-works karabiner-elements alfred google-chrome dropbox qmk-toolbox


git clone https://github.com/hwanjin-jeong/.emacs.d $HOME/emacs.d
git clone https://github.com/hwanjin-jeong/.config $HOME/.config

# zsh configuration
export ZSH=${HOME}/.config/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -s ~/.config/.zshrc ~/

# tmux
ln -s ~/.config/.tmux.conf ~/
