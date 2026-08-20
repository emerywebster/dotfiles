# macOS settings — run `source macos/defaults.sh`; some changes need a
# logout (or the activateSettings call below) to take effect.
#
# Grow this file over time: change a setting in System Settings, then
# diff `defaults read` before/after to find its key, and capture it here.

# --- Raycast replaces Spotlight on cmd+space ---

# Disable Spotlight's cmd+space (symbolic hotkey 64).
# (65 is cmd+opt+space "Finder search window" if you ever want that too.)
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 64 \
  "<dict><key>enabled</key><false/></dict>"

# Give Raycast cmd+space (keycode 49 = space). Raycast must not be
# running when its plist is written, so quit and relaunch it.
osascript -e 'quit app "Raycast"' 2>/dev/null
defaults write com.raycast.macos raycastGlobalHotkey -string "Command-49"
open -a Raycast 2>/dev/null

# Apply hotkey changes without a full logout
/System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u

# --- Starter ideas, uncomment/tune to taste ---

## Fast key repeat (lower = faster; System Settings maxes at 2/15)
# defaults write NSGlobalDomain KeyRepeat -int 2
# defaults write NSGlobalDomain InitialKeyRepeat -int 15

## Finder: show extensions, path bar, and folders-first sorting
# defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# defaults write com.apple.finder ShowPathbar -bool true
# defaults write com.apple.finder _FXSortFoldersFirst -bool true

## Screenshots to ~/Screenshots instead of the desktop
# mkdir -p ~/Screenshots && defaults write com.apple.screencapture location ~/Screenshots

## Dock: autohide, no recent apps
# defaults write com.apple.dock autohide -bool true
# defaults write com.apple.dock show-recents -bool false
# killall Dock
