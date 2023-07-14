# nvim config

## Installation

This requires `packer`. To install:
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
Once installed, you can install the packer packages with `:PackerSync`

To support grep with `<leader>ps`, Telescope depends on `ripgrep`. Install it with:
```bash
brew install ripgrep
```
or with any other local package manager.
