local opt = vim.opt
local indent = 4

-- disable netrw (for nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


opt.matchpairs = {"(:)", "{:}", "[:]", "<:>", "=:;"} -- % jumps between the symbols

-- indention
opt.expandtab = true -- convert tabs to spaces
opt.tabstop = indent -- insert spaces for a tab
opt.shiftwidth = indent -- the number of spaces inserted for each indentation
opt.softtabstop = indent -- when hitting <BS>, pretend like a tab is removed, even if spaces
opt.shiftround = true -- use multiple of shiftwidth when indenting with "<" and ">"

-- search
opt.ignorecase = true -- ignore case in search patterns
opt.smartcase = true -- smart case
opt.wildignore = opt.wildignore + {"*/node_modules/*", "*/.git/*", "*/vendor/*"}
opt.wildmenu = true -- make tab completion for files/buffers act like bash

-- ui
opt.cursorline = true -- highlight the current line (big diff)
opt.cmdheight = 0 -- only shows commandline when typing (looks good)
opt.mouse = "a" -- allow the mouse to be used in neovim
opt.relativenumber = true -- set relatively numbered lines
opt.scrolloff = 15 -- Keeps cursor from top and bottom
opt.sidescrolloff = 3 -- Keeps cursor from edges
opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
opt.splitbelow = true -- open new split below
opt.splitright = true -- open new split to the right
opt.wrap = false -- display a long line

-- backups
opt.backup = false -- create a backup file
opt.swapfile = false -- creates a swapfile
opt.writebackup = false -- if a file is being edited by another program it is not allowed to be edited

opt.showmode = false

-- perfomance
-- remember N lines in history
opt.history = 100 -- keep 100 lines of history
opt.redrawtime = 1500
opt.timeoutlen = 250 -- time to wait for a mapped sequence to complete (in milliseconds)
opt.ttimeoutlen = 10
opt.updatetime = 100 -- signify default updatetime 4000ms is not good for async update

-- theme
opt.termguicolors = true -- enable 24-bit RGB colors

-- persistent undo
-- Don"t forget to create folder $HOME/.local/share/nvim/undo
local undodir = vim.fn.stdpath("data") .. "/undo"
opt.undofile = true -- enable persistent undo
opt.undodir = undodir
opt.undolevels = 1000
opt.undoreload = 10000

-- fold
opt.foldmethod = "marker"
opt.foldlevel = 99

