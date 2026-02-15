## Vim bootstrap

A project to bootstrap a Neovim configuration on macOS.

### Prerequisites

- [Homebrew](https://brew.sh)

### Setup

```bash
git clone <this-repo> ~/vim-bootstrap
cd ~/vim-bootstrap
./bootstrap.sh
```

The setup script will:

1. Verify Homebrew is installed
2. Install Neovim via Homebrew if needed
3. Symlink `vimrc` to `~/.vimrc` (backs up any existing file)
4. Install plugins via vim-plug
