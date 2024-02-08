vim.cmd.colorscheme("catppuccin")

require("catppuccin").setup({
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = true,
        telescope = true,
        noice = true,
        mason = true
    }
})
