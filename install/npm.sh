brew install nvm

nvm install node
nvm use stable
nvm alias default stable

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
