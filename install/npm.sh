brew install nvm

nvm install node

# Globally install with npm

packages=(
  diff-so-fancy
  ember-cli
  grunt
  gulp
  http-server
  nodemon
  release-it
  spaceship-prompt
  spot
  svgo
  tldr
  underscore-cli
  vtop
)

npm install -g "${packages[@]}"
