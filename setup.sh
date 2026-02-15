#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
VIMRC_SOURCE="$SCRIPT_DIR/vimrc"
VIMRC_TARGET="$HOME/.vimrc"

# 1. Check for Homebrew
if ! command -v brew &>/dev/null; then
  echo "Error: Homebrew is not installed. Install it from https://brew.sh and re-run this script."
  exit 1
fi
echo "Homebrew found."

# 2. Check for Neovim
if ! command -v nvim &>/dev/null; then
  echo "Neovim not found. Installing via Homebrew..."
  brew install neovim
else
  echo "Neovim found."
fi

# 3. Symlink vimrc (backup existing file if present)
if [ -e "$VIMRC_TARGET" ] && [ ! -L "$VIMRC_TARGET" ]; then
  BACKUP="$VIMRC_TARGET.backup.$(date +%Y%m%d%H%M%S)"
  echo "Backing up existing $VIMRC_TARGET to $BACKUP"
  mv "$VIMRC_TARGET" "$BACKUP"
elif [ -L "$VIMRC_TARGET" ]; then
  echo "Removing existing symlink at $VIMRC_TARGET"
  rm "$VIMRC_TARGET"
fi

ln -s "$VIMRC_SOURCE" "$VIMRC_TARGET"
echo "Symlinked $VIMRC_TARGET -> $VIMRC_SOURCE"

# 4. Done
echo ""
echo "Setup complete! Open neovim and run:"
echo "  :PlugInstall"
