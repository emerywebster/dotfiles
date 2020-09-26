# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Set name of the theme to load. https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="cobalt2"
# ZSH_THEME="spaceship" -> `npm install -g spaceship-prompt`

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
plugins=(
  colored-man-pages
  extract
  git
  osx
)

# Include Z
. /usr/local/etc/profile.d/z.sh

# Homebrew
export PATH="/usr/local/sbin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"

# Yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# React Native
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Ruby
export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH

# Source all the other files
for DOTFILE in ~/dotfiles/system/.{alias,function,nvm,rvm}; do
  source "$DOTFILE"
done

# direnv for environment variable mgmt
eval "$(direnv hook zsh)"

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship
