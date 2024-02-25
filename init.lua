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
    -- cmp: Autocompletion
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-nvim-lsp-signature-help",
        }
    },
    -- barbecue.nvim: Top line
    {
        "utilyre/barbecue.nvim",
        name = "barbecue",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        opts = {},
    },
    -- The git family
    {
        "f-person/git-blame.nvim",
        opts = {},
    },
    {
        "lewis6991/gitsigns.nvim",
        opts = {},
    },
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim",
            "nvim-telescope/telescope.nvim"
        },
        config = true,
        opts = {},
    },
    -- hop.nvim: Easy motion plugin
    {
        "phaazon/hop.nvim",
        opts = {}
    },
    -- ident-blankline.nvim: Identation guides
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
    },
    -- lazy.nvim: UI Reskin
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {},
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    },
    --lspconfig: Autocompletion dependency
    {
        "neovim/nvim-lspconfig",
    },
    {
        "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
        config = {}
    },
    {
        "simrat39/inlay-hints.nvim",
        config = {}
    },
    -- Snippets
    {
        "L3MON4D3/LuaSnip",
        build = "make install_jsregexp",

        dependencies = {
            "rafamadriz/friendly-snippets"
        }
    },
    -- Mason: Language server installer
    {
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim"
        }
    },
    -- lualine.nvim: Bottom line
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        opts = {}
    },
    {
        "rktjmp/lush.nvim"
    },
    -- lspkind.nvim: Add icons for the autocompletion menu
    {
        "onsails/lspkind.nvim"
    },
    -- monokai-pro.nvim: Color theme
    {
    	"loctvl842/monokai-pro.nvim"
    },
    {
        "HiPhish/rainbow-delimiters.nvim"
    },
   -- telescope.nvim: General purpose explorer
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "cljoly/telescope-repo.nvim",
        }
    },
    -- nvim-tree: File outline
    {
        "nvim-tree/nvim-tree.lua",
        opts = {filters = {dotfiles = true}}
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {}
    },
    -- Rooter: Change root folder depending on the project
    {
        "notjedi/nvim-rooter.lua"
    },
    {
        "simrat39/symbols-outline.nvim",
        opts = {}
    },
    -- toggleterm.nvim: Togglable terminal
    {
        "akinsho/toggleterm.nvim",
        opts = {}
    },
})
require("settings")
require("setup")
require("keymaps")

