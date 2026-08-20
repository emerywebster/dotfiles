# Powerlevel10k instant prompt — must stay at the very top of ~/.zshrc.
# Anything that needs console input (prompts, confirmations) goes above this.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Homebrew (Apple Silicon)
eval "$(/opt/homebrew/bin/brew shellenv)"

# PostgreSQL (keg-only; picks up whichever versioned formula is installed)
for PSQL_BIN in /opt/homebrew/opt/postgresql@*/bin(N); do
  export PATH="$PSQL_BIN:$PATH"
done

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  colored-man-pages
  extract
  git
  macos
  z
)

source "$ZSH/oh-my-zsh.sh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# NVM (installed via Homebrew)
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# Ruby (Homebrew, ahead of system ruby)
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
  export PATH="$(gem environment gemdir)/bin:$PATH"
fi

export PATH="$HOME/.local/bin:$PATH"

# Aliases & functions
for DOTFILE in ~/dotfiles/system/.{alias,function}; do
  source "$DOTFILE"
done

# Machine-specific secrets & exports (untracked)
[ -f ~/.extra/.env ] && source ~/.extra/.env
