# Install Homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew update
brew upgrade

# Install packages

apps=(
  bat
  coreutils
  cmake
  direnv
  dnsmasq
  dockutil
  fasd
  gifsicle
  git
  gnu-sed
  golang
  grep
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
  ssh-copy-id
  tree
  vim
  watchman
  wget
  wifi-password
  z
)

brew install "${apps[@]}"

# Auto-update every 24 hrs
# github.com/DomT4/homebrew-autoupdate
brew tap domt4/autoupdate
brew autoupdate --start 86400
