# Install Caskroom

brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

# Install packages

apps=(
  atom
  dropbox
  evernote
  firefox
  google-chrome
  iconjar
  iterm2
  launchbar
  macdown
  numi
  sequel-pro
  slack
  sketch
  sketch-toolbox
  skyfonts
  sqlitebrowser
  spotify
  textexpander
  vscode
  wunderlist
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Link Hammerspoon config
[ -d ~/.hammerspoon ] || ln -sfv "$DOTFILES_DIR/etc/hammerspoon/" ~/.hammerspoon
