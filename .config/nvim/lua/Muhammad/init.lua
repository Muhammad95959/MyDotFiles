require("Muhammad.set")
require("Muhammad.remap")

-- Colorscheme
-- vim.cmd('colorscheme catppuccin-mocha')

-- Highlighting
vim.cmd('hi Pmenu ctermbg=NONE ctermfg=White')
vim.cmd('hi CursorLineNr cterm=bold ctermbg=NONE')
vim.cmd('hi CursorLine cterm=NONE')
vim.cmd('hi! link SignColumn LineNr')

-- Startup settings
vim.cmd("augroup startup_settings")
vim.cmd("autocmd!")
vim.cmd("autocmd BufWinLeave ?* mkview 1")
vim.cmd("autocmd BufWinEnter ?* silent! loadview 1")
vim.cmd("autocmd BufRead,BufEnter */doc/* wincmd L")
vim.cmd("augroup END")
