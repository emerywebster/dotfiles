brew install nvm

nvm install node

# Expected for ember client
nvm install node 10
nvm use 10
nvm alias default 10

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
