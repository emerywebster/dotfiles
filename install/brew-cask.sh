# Install Caskroom

brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts

# Install packages

apps=(
  1password
  adobe-creative-cloud
  alfred
  atom
  cleanmymac
  cloudapp
  dropbox
  evernote
  firefox
  google-chrome
  google-drive-file-stream
  iconjar
  iterm2
  macdown
  numi
  rocket
  sequel-pro
  slack
  sketch
  sketch-toolbox
  skyfonts
  sqlitebrowser
  spectacle
  spotify
  visual-studio-code
)

brew cask install "${apps[@]}"
