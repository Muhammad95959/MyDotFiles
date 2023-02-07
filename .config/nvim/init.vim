""" Map leader to space ---------------------
:let mapleader = " "

""" Plugins  --------------------------------
call plug#begin()
Plug 'ap/vim-css-color'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'mbbill/undotree'
Plug 'terryma/vim-multiple-cursors'
Plug 'itchyny/lightline.vim'
Plug 'julien/vim-colors-green'
Plug 'catppuccin/nvim'
Plug 'folke/tokyonight.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'numToStr/Comment.nvim'
Plug 'gbprod/yanky.nvim'
Plug 'kevinhwang91/rnvimr'
Plug 'gelguy/wilder.nvim'
Plug 'jamessan/vim-gnupg'
Plug 'lewis6991/impatient.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-cmdline'
Plug 'tamago324/cmp-zsh'
Plug 'Shougo/deol.nvim'
Plug 'uga-rosa/cmp-dictionary'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
call plug#end()

""" Plugin settings -------------------------
lua require('plugins')

let g:lightline = {
			\'colorscheme': 'one',
			\ 'active': {
			\ 'left': [ [ 'mode', 'paste' ],
			\           [ 'readonly', 'filename', 'modified' ] ],
			\ 'right': [ [ 'lineinfo' ],
			\            [ 'percent' ] ] },
			\ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
			\ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
			\ }

let g:rnvimr_enable_ex = 1
let g:rnvimr_enable_picker = 1
let g:rnvimr_action = {
			\ '<CR>': 'NvimEdit tabedit',
			\ '<C-t>': 'NvimEdit tabedit',
			\ '<C-x>': 'NvimEdit split',
			\ '<C-v>': 'NvimEdit vsplit',
			\ '<C-o>': 'NvimEdit drop',
			\ 'gw': 'JumpNvimCwd',
			\ 'yw': 'EmitRangerCwd'
			\ }

""" Common settings -------------------------
:set number
:set relativenumber
:set autoindent
:set expandtab
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set linebreak
:set ignorecase
:set smartcase
:set scrolloff=4
:set mouse=a
:set noswapfile
:set nobackup
:set undofile
:set noshowmode
:set termbidi
:set keymap=arabic
:set iminsert=0
:set clipboard+=unnamedplus

""" ColorSchemes ----------------------------
hi Pmenu ctermbg=NONE ctermfg=White

""" Startup settings ------------------------
augroup startup_settings
	au!
	" open from where you left
	au BufWinLeave ?* mkview 1
	au BufWinEnter ?* silent! loadview 1
	" open helpfiles in vertical split
	au BufRead,BufEnter */doc/* wincmd L
augroup END

""" Mappings --------------------------------
nnoremap <C-h> <C-w>h 
nnoremap <C-j> <C-w>j 
nnoremap <C-k> <C-w>k 
nnoremap <C-l> <C-w>l 

nnoremap <silent><C-UP> :resize -2<CR>
nnoremap <silent><C-Down> :resize +2<CR>
nnoremap <silent><C-Left> :vertical resize -2<CR>
nnoremap <silent><C-Right> :vertical resize +2<CR>

nnoremap <silent><A-l> :tabn<CR>
nnoremap <silent><A-h> :tabp<CR>

nnoremap <silent><A-j> <ESC>:m.+1<CR>
nnoremap <silent><A-k> <ESC>:m.-2<CR>

vnoremap < <gv
vnoremap > >gv

vnoremap <A-j> :m.+1<CR>==gv
vnoremap <A-k> :m.-2<CR>==gv

vnoremap <A-j> :move'>+1<CR>gv-gv
vnoremap <A-k> :move'<-2<CR>gv-gv

noremap <silent><leader>f :RnvimrToggle<CR>
noremap <silent><leader>u :UndotreeToggle<CR>
noremap <silent><leader>= mmggVG='m
noremap <silent><leader>s :set hlsearch!<CR>
noremap <silent><leader>w :set wrap!<CR>
noremap <silent><leader>l :setlocal spell! spelllang=en_us<CR>
noremap <silent><leader>tf :Telescope find_files hidden=true<CR>
noremap <silent><leader>tr :Telescope registers<CR>
noremap <leader>r :source ~/.config/nvim/init.vim<CR>

" clipboard magic
noremap x "_x
noremap s "_s
noremap r "_r
noremap ,p "_dp
" vnoremap <C-p> "+p
" nnoremap <C-p> "+p
" vnoremap <leader>p "*p
" nnoremap <leader>p "*p
vnoremap ,c "_c
nnoremap ,c "_c
nnoremap ,C "_C
vnoremap ,d "_d
nnoremap ,d "_d
nnoremap ,D "_D
" vnoremap <leader>y "+y
" nnoremap <leader>y "+y
" nnoremap <leader>Y "+Y

" ColorSchemes
nmap <silent><leader>cd :colorscheme default<CR> \| :set notermguicolors<CR> \| :hi Pmenu ctermbg=NONE ctermfg=White<CR>
nmap <silent><leader>cg :colorscheme green<CR> \| :set notermguicolors<CR>
nmap <silent><leader>cc :colorscheme catppuccin-macchiato<CR>
nmap <silent><leader>ct :colorscheme tokyonight-moon<CR>
