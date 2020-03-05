# Install Caskroom

brew tap homebrew/cask-versions
brew tap homebrew/cask-cask
brew tap homebrew/cask-fonts

# Install packages

apps=(
  1password
  adobe-creative-cloud
  alfred
  atom
  cleanmymac
  cloudapp
  # contrast
  dropbox
  evernote
  fantastical
  figma
  firefox
  font-fira-code
  google-chrome
  google-drive-file-stream
  hyper
  iconjar
  iterm2
  macdown
  numi
  rocket
  sequel-pro
  slack
  sketch
  skyfonts
  sqlitebrowser
  spectacle
  spotify
  things
  visual-studio-code
)

brew cask install "${apps[@]}"
