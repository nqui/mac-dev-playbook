#!/usr/bin/env bash
set -euo pipefail

killall Dock

mise plugin add dotnet
mise plugin add uv

# These casks ship system extensions or otherwise require /Applications.
# Override the user's HOMEBREW_CASK_OPTS (which targets $HOME/Applications).
brew install --cask --appdir=/Applications \
  1password \
  adguard \
  lulu \
  oversight

starship preset gruvbox-rainbow -o ~/.config/starship.toml

cat <<'EOF'

Manual App Store installs (mas automation is unreliable on modern macOS):
  - Keka
  - WireGuard
  - Unsplash Wallpapers
EOF
