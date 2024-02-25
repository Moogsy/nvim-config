local opts = { noremap=true, silent=true }
local keymap = vim.keymap.set

keymap('n', '(', vim.diagnostic.goto_prev, opts, "Go to previous diagnostic")
keymap('n', ')', vim.diagnostic.goto_next, opts, "Go to next diagnostic")

-- Jump around files according to what he lsp provides
keymap('n', 'gd', vim.lsp.buf.definition, opts, "Jump to the current object's definition")
keymap('n', 'gt', vim.lsp.buf.type_definition, opts, "Jump to the current object's definition")
keymap('n', 'gf', vim.lsp.buf.format, opts, "Format selected area")
keymap('n', 'gi', vim.lsp.buf.implementation, opts, "List current object's implementations")

keymap('n', 'gr', vim.lsp.buf.references, opts, "List current object's references")
keymap('n', 'gk', vim.lsp.buf.hover, opts, "Show information window")

keymap('n', 'qa', vim.lsp.buf.code_action, opts, "Open code action menu for current selection")
keymap('n', 'qr', vim.lsp.buf.rename, opts, "Rename current object")
keymap('n', 'qf', vim.lsp.buf.format, opts, "Rename current object")

-- Terminal
keymap('t', '<Esc>', [[<C-\><C-n>]], opts, "Escape terminal by pressing escape key")
keymap('n', 'tt', function() vim.cmd[[ToggleTerm direction=float]] end, opts, "Toggle floating (hovering) terminal")
keymap('n', 'th', function() vim.cmd[[ToggleTerm direction=horizontal]] end, opts, "Toggle floating terminal")
keymap('n', 'tm', function() vim.cmd[[ToggleTerm direction=vertical]] end, opts, "Toggle floating terminal")

-- Hop
keymap('n', 'm', function() vim.cmd[[HopWord]] end, opts, "Hop to any word")


-- Telescope stuff
local tbuiltins = require("telescope.builtin")

keymap('n', 'tf', tbuiltins.find_files, opts, "Find files")
keymap('n', 'td', tbuiltins.diagnostics, opts, "List diagnostics")
keymap('n', 'tl', tbuiltins.live_grep, opts, "Live grep")
keymap('n', 'ts', tbuiltins.spell_suggest, opts, "Suggest spelling")
keymap('n', 'tr', function() vim.cmd("Telescope repo list") end, opts, "List all git repositories")

-- Nvim Tree
keymap('n', [["]], function() vim.cmd("NvimTreeToggle") end, opts, "Shows the tree")

-- Symbols Outline
keymap('n', [[']], function() vim.cmd("SymbolsOutline") end, opts, "Shows symbols")

-- User specific
keymap(
    'n',
    'gx',
    function() vim.cmd[[call jobstart(["xdg-open", expand("<cfile>")], {"detach": v:true})]] end,
    opts,
    "Open file or url under cursor into external app"
)
