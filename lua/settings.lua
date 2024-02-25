local opt=vim.opt

vim.o.guifont = "VictorMono Nerd Font Mono:h5"

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Setting up colors
opt.termguicolors = true

-- Misc
opt.mouse = nil
opt.pyx = 3
opt.encoding = "utf-8"
opt.updatetime = 200
opt.clipboard = "unnamedplus"

-- Readability
opt.number = true
opt.wrap = false
opt.conceallevel = 0

-- Interface
opt.title = true
opt.laststatus = 2
opt.scrolloff = 5

-- Completion

-- Indentation
opt.cindent = false

-- Backapce
opt.backspace = {"indent", "eol", "start"}

-- Parenthesises
opt.showmatch = true
opt.matchtime = 1

-- Tabs
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.shiftround = true

-- Search
opt.hlsearch = true
opt.is = true

opt.ignorecase = true
opt.smartcase = true

-- Fix some lsp issues since some language servers dislike backups
opt.backup = false
opt.writebackup = false

-- Do not double show errors
vim.diagnostic.config ({
    virtual_text = false,
    virtual_lines = {
        highlight_whole_line = false
    }
})

-- Use symbols for gutter signs
local signs = {
    Error = "",
    Warn = "⚠",
    Hint = "",
    Info = ""
}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end
