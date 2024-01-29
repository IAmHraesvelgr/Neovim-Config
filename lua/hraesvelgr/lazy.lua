local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  'nvim-lua/plenary.nvim',

  { "catppuccin/nvim", as = "catppuccin",
  config = function()
    vim.cmd('colorscheme catppuccin')
  end
  },

  'nvim-treesitter/nvim-treesitter',
  'nvim-treesitter/playground',
  'theprimeagen/harpoon',
  'mbbill/undotree',
  'tpope/vim-fugitive',
  'VonHeikemen/lsp-zero.nvim',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'xiyaowong/transparent.nvim',

  {
    "startup-nvim/startup.nvim",
    config = function()
    require("startup").setup({theme = "evil"})
    end
  },

  'andweeb/presence.nvim',
  'tamton-aquib/staline.nvim',
  'nvim-lualine/lualine.nvim',
  'cohama/lexima.vim',
  {
    'windwp/nvim-ts-autotag',
    ft = {
      "javascript", "html", "css", "javascriptreact", "typescript", "typescriptreact"
    },
    config = function ()
      require('nvim-ts-autotag').setup()
    end
  },
})
