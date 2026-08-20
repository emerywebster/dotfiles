# dotfiles

Personal macOS setup: shell, git, editor, terminal, and every package/app in one [`Brewfile`](Brewfile).

## New machine

```sh
sudo softwareupdate -i -a
xcode-select --install

git clone https://github.com/emerywebster/dotfiles.git ~/dotfiles
source ~/dotfiles/install.sh
```

Then:

- Sign in to the Mac App Store first if `mas` installs fail
- [Set up SSH keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
- Run `p10k configure` if the prompt needs re-tuning
- Raycast/Arc/etc. settings sync through their own accounts, not this repo

## Layout

| Path        | What                                                        |
| ----------- | ----------------------------------------------------------- |
| `Brewfile`  | CLI tools, apps, Mac App Store apps, VS Code extensions     |
| `install/`  | oh-my-zsh + powerlevel10k, node via nvm/corepack            |
| `runcom/`   | `.zshrc`, `.gemrc` (symlinked to `~`)                       |
| `system/`   | aliases and functions sourced by `.zshrc`                   |
| `git/`      | `.gitconfig`, global gitignore                              |
| `vscode/`   | settings, keybindings, snippets (symlinked into VS Code)    |
| `ghostty/`  | terminal config (symlinked to `~/.config/ghostty`)          |

## Keeping in sync

```sh
brewup                       # update/upgrade/autoremove/cleanup (alias)
brew bundle dump --force     # rewrite Brewfile from what's installed
brew bundle cleanup          # dry-run: installed but not in Brewfile
```

Private, machine-only extras go in `~/.extra/install.sh` (sourced if present).

## Extras

- [Apple fonts](https://developer.apple.com/fonts/)
- [Dank Mono font](https://gumroad.com/l/dank-mono)
