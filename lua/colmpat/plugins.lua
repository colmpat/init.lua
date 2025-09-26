local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Aesthetics
  use 'folke/tokyonight.nvim'
  use 'folke/zen-mode.nvim'

  -- Essentials
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
  use 'theprimeagen/harpoon'
  use 'mbbill/undotree'
  -- for previewing markdown files
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
  -- git
  use 'tpope/vim-fugitive'
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }
  use 'williamboman/mason.nvim'

  use 'github/copilot.vim'
  use {
    'saghen/blink.cmp',
    run = 'cargo build --release',
  }

end)
