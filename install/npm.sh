brew install nvm

nvm install 8
nvm use 8
nvm alias default 8

# Globally install with npm

packages=(
  diff-so-fancy
  ember-cli
  grunt
  gulp
  http-server
  nodemon
  release-it
  spot
  svgo
  tldr
  underscore-cli
  vtop
)

npm install -g "${packages[@]}"
