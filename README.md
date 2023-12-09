# nvim config

## Installation + first steps

1. clone and put this repo at `~/.config/nvim/`. neovim parses this directory on boot for configuration.
    ```bash
    $ git clone git@github.com:colmpat/init.lua.git ~/.config/nvim/
    ```

1. This uses `packer` to manage plugins. To install:
    ```bash
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
     ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```
1. Once installed, you can install the packer packages with `:PackerSync` (and add/modify your
dependancies [here](./lua/colmpat/plugins.lua))

1. To support grep with `<leader>ps`, Telescope depends on `ripgrep`. Install it with:
    ```bash
    brew install ripgrep
    ```
    or with any other local package manager.

1. Configure your copilot with `:Copilot` (this is crucial. obviously.)

## Usage Tips:

### Navigation

#### File Explorer
> see/edit configuration [here](./lua/colmpat/maps.lua#L5)

I remapped `:Explore` to `<leader>sf` for ease of use

#### Telescope (fuzzy-finder)
> see/edit configuration [here](./after/plugin/telescope.lua)

[`telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim) is a highly extendable fuzzy finder over lists. Built on the latest awesome features from neovim core. Telescope is centered around modularity, allowing for easy customization.

Use this and use this often.

#### Harpoon: add files to a quick buffer
> see/edit configuration [here](./after/plugin/harpoon.lua)

You add files to a buffer of 4 hotfiles. Navigate to file # with:
1. `<leader>j`
1. `<leader>k`
1. `<leader>l`
1. `<leader>h`

add current file with `<leader>a`, show/rearrange/delete files in buffer with `<C-e>`

Read the description [here](https://github.com/ThePrimeagen/harpoon#-the-problems) for more detail... trust me, you'll use this and love it.

#### Window splitting and navigation

Split window:
- `ss` -- split horizontal
- `sv` -- split vertical

Move window:
- `sh` -- go to window to the left
- `sj` -- go to window below
- `sk` -- go to window above
- `sl` -- go to window to the right

---

## LSP
Install any langauge servers (for auto completion, syntax highlighting, and utils) with
`:Mason`. This pulls up a window that you can use to install any lsps you might need.

Configure their settings more [here](./after/plugin/lsp.lua).

Helpful tools:
- `gd` - go to where this token is defined (functions, variables, etc.)
- `<C-o>` - hop back to before you moved (like using `gd` for example)
- `K` - hover the type, docs, and/or comments for this token
- `<leader>vrr` - shows all times this token is referenced in your code (eg. where this function is called)
- `<leader>vrn` - renames this token (and does so every place its referenced)
- more found (and configurable) [here](./after/plugin/lsp.lua)

---

## Color scheme
Toggle light/dark mode (you can edit these [here](./lua/colmpat/maps.lua)):
- `<leader>cd` **C**hange to **D**ark mode
- `<leader>cl` **C**hange to **L**ight mode

I have it default to start up in light mode. Change color schemes and defualts
[here](./after/plugin/colors.lua)

