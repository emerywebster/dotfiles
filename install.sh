#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR EXTRA_DIR VSCODE_HOME="$HOME/Library/Application Support/Code"
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXTRA_DIR="$HOME/.extra"
VSCODE_HOME="$HOME/Library/Application Support/Code"

# Update dotfiles itself first

[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/runcom/.gemrc" ~
ln -sfv "$DOTFILES_DIR/runcom/.zshrc" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~

# Package managers & packages

. "$DOTFILES_DIR/install/brew.sh"
. "$DOTFILES_DIR/install/brew-cask.sh"
. "$DOTFILES_DIR/install/npm.sh"
. "$DOTFILES_DIR/install/zsh.sh"

# Install extra stuff
 
if [ -d "$EXTRA_DIR" -a -f "$EXTRA_DIR/install.sh" ]; then
  . "$EXTRA_DIR/install.sh" 
fi

# More symlinks for editors

ln -sfv "$DOTFILES_DIR/vscode/settings.json" "$VSCODE_HOME/User/settings.json"
ln -sfv "$DOTFILES_DIR/vscode/keybindings.json" "$VSCODE_HOME/User/keybindings.json"
ln -sfv "$DOTFILES_DIR/vscode/snippets" "$VSCODE_HOME/User/snippets"
ln -sfv "$DOTFILES_DIR/hyper/.hyper.js" "$HOME/.hyper.js"