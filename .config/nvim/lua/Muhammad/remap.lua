vim.g.mapleader = " "

vim.keymap.set('n', '<leader>=', 'mmggVG=\'m')
vim.keymap.set('n', '<leader>w', '<cmd>set wrap!<CR>')
vim.keymap.set('n', '<leader>s', '<cmd>set hlsearch!<CR>')
vim.keymap.set('n', '<leader>l', '<cmd>setlocal spell! spelllang=en_us<CR>')

-- Windows navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Resizing windows
vim.api.nvim_set_keymap('n', '<C-UP>', ':resize -2<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize +2<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize -2<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +2<CR>', {noremap = true, silent = true})

-- Enhanced indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- Line movement
vim.api.nvim_set_keymap('n', '<A-j>', '<ESC>:m.+1<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-k>', '<ESC>:m.-2<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<A-j>', ':m \'>+1<CR>==gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<A-k>', ':m \'<-2<CR>==gv', {noremap = true, silent = true})

-- Tab manipulation
vim.api.nvim_set_keymap('n', '<A-l>', ':tabn<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-h>', ':tabp<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-.>', ':tabm +1<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-,>', ':tabm -1<CR>', {noremap = true, silent = true})

-- Clipboard magic
vim.api.nvim_set_keymap('n', 'x', '"_x', { noremap = true })
vim.api.nvim_set_keymap('n', 's', '"_s', { noremap = true })
vim.api.nvim_set_keymap('n', 'r', '"_r', { noremap = true })
-- vim.api.nvim_set_keymap('v', ',c', '"_c', { noremap = true })
-- vim.api.nvim_set_keymap('n', ',c', '"_c', { noremap = true })
-- vim.api.nvim_set_keymap('n', ',C', '"_C', { noremap = true })
-- vim.api.nvim_set_keymap('v', ',d', '"_d', { noremap = true })
-- vim.api.nvim_set_keymap('n', ',d', '"_d', { noremap = true })
-- vim.api.nvim_set_keymap('n', ',D', '"_D', { noremap = true })
-- vim.api.nvim_set_keymap('n', ',p', '"_dp', { noremap = true })
-- vim.api.nvim_set_keymap('v', '<C-p>', '"+p', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<C-p>', '"+p', { noremap = true })
-- vim.api.nvim_set_keymap('v', '<leader>p', '"*p', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>p', '"*p', { noremap = true })
-- vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>Y', '"+Y', { noremap = true })

-- Color schemes
vim.api.nvim_set_keymap('n', '<leader>cd', '<cmd>colorscheme default<CR> | <cmd>set notermguicolors<CR> | <cmd>hi Pmenu ctermbg=NONE ctermfg=White<CR> | <cmd>hi! link SignColumn LineNr<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>cg', '<cmd>colorscheme green<CR> | <cmd>set notermguicolors<CR> | <cmd>hi! link SignColumn LineNr<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>cc', '<cmd>colorscheme catppuccin-mocha<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ct', '<cmd>colorscheme tokyonight-moon<CR>', { noremap = true, silent = true })
