# Node via nvm (installed by Homebrew via the Brewfile)

export NVM_DIR="$HOME/.nvm"
mkdir -p "$NVM_DIR"
. "$(brew --prefix nvm)/nvm.sh"

nvm install --lts

# yarn + pnpm come from corepack (bundled with node)
corepack enable
