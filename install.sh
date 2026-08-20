#!/usr/bin/env bash

# Get current dir (so this script can be run from anywhere)

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXTRA_DIR="$HOME/.extra"
VSCODE_HOME="$HOME/Library/Application Support/Code"
export DOTFILES_DIR

# Update dotfiles itself first

[ -d "$DOTFILES_DIR/.git" ] && git -C "$DOTFILES_DIR" pull origin main

# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/runcom/.gemrc" ~
ln -sfv "$DOTFILES_DIR/runcom/.zshrc" ~
ln -sfv "$DOTFILES_DIR/runcom/.p10k.zsh" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~

# Homebrew, then everything in the Brewfile (CLI, apps, MAS, VS Code extensions)

if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
eval "$(/opt/homebrew/bin/brew shellenv)"
brew update
brew bundle install --file="$DOTFILES_DIR/Brewfile"

# Auto-update brew every 24 hrs
# github.com/DomT4/homebrew-autoupdate
brew autoupdate start 86400 2>/dev/null || true

# Shell & node

. "$DOTFILES_DIR/install/zsh.sh"
. "$DOTFILES_DIR/install/node.sh"

# Install extra stuff (private, not in this repo)

if [ -d "$EXTRA_DIR" ] && [ -f "$EXTRA_DIR/install.sh" ]; then
  . "$EXTRA_DIR/install.sh"
fi

# More symlinks for editors & terminal

mkdir -p "$VSCODE_HOME/User"
ln -sfv "$DOTFILES_DIR/vscode/settings.json" "$VSCODE_HOME/User/settings.json"
ln -sfv "$DOTFILES_DIR/vscode/keybindings.json" "$VSCODE_HOME/User/keybindings.json"
ln -sfnv "$DOTFILES_DIR/vscode/snippets" "$VSCODE_HOME/User/snippets"
mkdir -p "$HOME/.config"
ln -sfnv "$DOTFILES_DIR/ghostty" "$HOME/.config/ghostty"
