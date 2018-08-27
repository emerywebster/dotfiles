# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap Goles/battery
brew update
brew upgrade

# Install packages

apps=(
  bash-completion2
  bats
  battery
  coreutils
  cmake
  dnsmasq
  dockutil
  ffmpeg
  fasd
  gifsicle
  git
  gnu-sed --with-default-names
  grep --with-default-names
  heroku
  heroku-node
  hub
  httpie
  imagemagick
  jq
  mackup
  peco
  postgresql
  psgrep
  python
  redis
  ruby
  shellcheck
  ssh-copy-id
  subversion
  tree
  vim
  watchman
  wget
  wifi-password
  z
  zsh
)

brew install "${apps[@]}"
