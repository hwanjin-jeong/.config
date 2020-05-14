#!/bin/bash

export WORKSPACE=$HOME/src
mkdir -p $WORKSPACE

# install home brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install ghq ripgrep fzf autojump direnv jenv emacs tmux kubernetes-cli kubectx kustomize skaffold terraform

brew tap homebrew/cask-fonts homebrew/cask-drivers
brew cask install slack spectacle docker jetbrains-toolbox font-source-code-pro kensington-trackball-works karabiner-elements alacritty alfred google-chrome lens

git clone https://github.com/hwanjin-jeong/.emacs.d $HOME/emacs.d
git clone https://github.com/hwanjin-jeong/.config $HOME/.config

# zsh configuration
export ZSH=${HOME}/.config/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -s ~/.config/.zshrc ~/

# tmux
ln -s ~/.config/.tmux.conf ~/
