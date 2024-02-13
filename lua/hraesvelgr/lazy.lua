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
  'hrsh7th/cmp-nvim-lua',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'saadparwaiz1/cmp_luasnip',
  'L3MON4D3/LuaSnip',
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'xiyaowong/transparent.nvim',
  {
    "startup-nvim/startup.nvim",
    config = function ()
      require('startup').setup({
          theme = "evil",
    })
    end
  },
  'andweeb/presence.nvim',
  {
    'windwp/nvim-ts-autotag',
    ft = {
      "javascript", "html", "css", "javascriptreact", "typescript", "typescriptreact"
    },
    config = function ()
      require('nvim-ts-autotag').setup()
    end
  },

  {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
    }
  },
  "Pocco81/auto-save.nvim",
  'nvim-lualine/lualine.nvim',
  {
    "windwp/nvim-autopairs",
    opts = {
      fast_wrap = {},
      disable_filetype = { "TelescopePrompt", "vim" },
    },
    config = function(_, opts)
    require("nvim-autopairs").setup(opts)

    -- setup cmp for autopairs
    local cmp_autopairs = require "nvim-autopairs.completion.cmp"
    require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
  },
  'akinsho/bufferline.nvim',
  "folke/zen-mode.nvim",
  {
    "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {}
  },
  "lewis6991/gitsigns.nvim",
  "stevearc/dressing.nvim",
  {
    'akinsho/toggleterm.nvim', version = "*", config = true
  },
  "RRethy/base16-nvim"
})
