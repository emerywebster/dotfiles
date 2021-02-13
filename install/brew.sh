# Install Homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade

# Install packages

apps=(
  bash-completion2
  bat
  bats
  coreutils
  cmake
  direnv
  dnsmasq
  dockutil
  ffmpeg
  fasd
  gifsicle
  git
  gnu-sed
  golang
  grep
  heroku
  heroku-node
  hub
  hugo
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
  tree
  vim
  watchman
  wget
  wifi-password
  z
  zsh
)

brew install "${apps[@]}"

# Auto-update every 24 hrs
# github.com/DomT4/homebrew-autoupdate
brew tap domt4/autoupdate
brew autoupdate --start 86400
