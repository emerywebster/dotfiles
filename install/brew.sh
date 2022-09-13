# Install Homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew update
brew upgrade

# Install packages

apps=(
  dnsmasq
  git
  grep
  postgresql
  python
  redis
  ruby
  vim
  watchman
  wget
  z
)

brew install "${apps[@]}"

# Auto-update every 24 hrs
# github.com/DomT4/homebrew-autoupdate
brew tap domt4/autoupdate
brew autoupdate --start 86400
