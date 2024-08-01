local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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
    { "lervag/vimtex", lazy = false, },
    { "nvim-lualine/lualine.nvim", dependencies = { 'nvim-tree/nvim-web-devicons' } },
    { "motosir/skel-nvim" },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function ()
            local configs = require("nvim-treesitter.configs")
            configs.setup({
                ensure_installed = { "c", "lua", "python", "vim", "java", "haskell", 
                    "bash", "toml", "yaml", "json", "markdown_inline"},
                highlight = { enable = true,
                additional_vim_regex_highlighting = true, },
                indent = { enable = true },
            })
        end
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function ()
            vim.o.timeout = true
            vim.o.timeoutlen = 500
        end,
        opts = {}
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        }
    },
    {
        "folke/tokyonight.nvim", lazy=false, priority=1000, opts={},
    }
})

require('lualine').setup{
    options = { theme = "ayu_dark"},
}

local skeld = require("skel-nvim.defaults")

require('skel-nvim').setup{
    mappings = {
        ['*.java'] = "java.skel",
        ['*.c'] = "c.skel",
        ['*.tex'] = "tex.skel"
    },
    substitutions = {
        ['FILENAME']    = skeld.get_filename,
    }
}

vim.opt.termguicolors = true,
vim.cmd[[colorscheme tokyonight]]

vim.cmd([[
set ts=4 sw=4 et nu rnu
let g:vimtex_view_method = 'zathura'
let maplocalleader = ","
hi NormalFloat guibg=DarkRed
]])
