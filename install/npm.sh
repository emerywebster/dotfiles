brew install nvm

nvm install node

# Globally install with npm

packages=(
  diff-so-fancy
  ember-cli
  grunt
  gulp
  http-server
  netlify
  nodemon
  release-it
  spaceship-prompt
  spot
  svgo
  tldr
  underscore-cli
  vtop
  yarn
)

npm install -g "${packages[@]}"
