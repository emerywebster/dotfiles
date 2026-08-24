# Claude Code: native installer, settings symlink, plugins

# CLI (native installer puts it in ~/.local/bin, already on PATH via .zshrc)

if ! command -v claude >/dev/null 2>&1; then
  curl -fsSL https://claude.ai/install.sh | bash
fi

# Settings are tracked in the repo and symlinked in, same as vscode/ghostty.
# enabledPlugins + extraKnownMarketplaces live here, so plugin enablement
# (e.g. codex@openai-codex) survives machine rebuilds. If a real file exists
# (first run on an already-set-up machine), keep it as a backup.

mkdir -p "$HOME/.claude"
if [ -f "$HOME/.claude/settings.json" ] && [ ! -L "$HOME/.claude/settings.json" ]; then
  mv -v "$HOME/.claude/settings.json" "$HOME/.claude/settings.json.pre-dotfiles"
fi
ln -sfv "$DOTFILES_DIR/claude/settings.json" "$HOME/.claude/settings.json"

# Plugins: settings.json declares which are enabled and where they come from;
# this makes sure each is actually installed on this machine. Idempotent.
# May need `claude` login first — rerun install.sh (or these lines) if so.

for plugin in codex@openai-codex swift-lsp@claude-plugins-official figma@claude-plugins-official; do
  claude plugin install -s user "$plugin" ||
    echo "warn: 'claude plugin install $plugin' failed — sign in to claude, then rerun"
done
