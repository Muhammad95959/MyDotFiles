-- Line numbers and indentation
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.linebreak = true
vim.opt.numberwidth = 2
vim.opt.wrap = false

-- Searching and matching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Scrolling and mouse
vim.opt.scrolloff = 4
vim.opt.mouse = 'a'

-- Files and backups
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.showmode = false

-- Terminal and input method
vim.opt.termbidi = true
vim.opt.keymap = 'arabic'
vim.opt.iminsert = 0

-- Clipboard and encodings
vim.opt.clipboard:append('unnamedplus')
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.termencoding = 'utf-8'
vim.opt.fileencodings:append('utf-8', 'cp1256')

-- other
vim.opt.updatetime = 50
vim.opt.cursorline = true
