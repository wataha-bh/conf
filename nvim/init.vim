set nocp
set ignorecase
set smartcase
set undofile

filetype plugin on
filetype on

let mapleader = ','

set relativenumber

" Spellcheck
:set spell spelllang=en_gb

" ===============
" Netrw
" ===============
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_banner = 0

" ===============
" Plugins
" ===============
call plug#begin()

" Colorschemes
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" Lualine
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" Plenary
Plug 'nvim-lua/plenary.nvim'

" Tim Pope
Plug 'tpope/vim-commentary'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'andersevenrud/cmp-tmux'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'
Plug 'jose-elias-alvarez/null-ls.nvim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Telescope
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" I'm sorry Tim
Plug 'kylechui/nvim-surround'

" Undotree
Plug 'mbbill/undotree'

" Rescript
Plug 'rescript-lang/vim-rescript'

" Purescript
" Plug 'purescript-contrib/purescript-vim'

call plug#end()

" ===============
" Mappings
" ===============

" No highlight
nnoremap <silent> <CR> :noh<CR>

" Netrw
nnoremap <silent> - :Explore<CR>
nnoremap <silent> _ :Sex<CR>
nnoremap <silent> __ :Vex<CR>

" Leader mappings
" ===============

" NO PREFIX
" Help
nnoremap <silent> <leader>? :help<CR>

" Source
nnoremap <leader>r :source $MYVIMRC<CR>

" Buffers
nnoremap <leader>[ :Rex<CR>

" Movements
nnoremap <silent> <leader>k <C-w>k
nnoremap <silent> <leader>j <C-w>j
nnoremap <silent> <leader>l <C-w>l
nnoremap <silent> <leader>h <C-w>h
nnoremap <silent> <leader>q <C-w>q

" Panes
nnoremap <silent> <leader>v <C-w>v
nnoremap <silent> <leader>s <C-w>s

" Clipboard
xnoremap <silent> <leader>y "*y

" Line break
nnoremap <silent> <C-l> i<Enter><Esc>

" ===============
" LUA
" ===============
:lua require('init')

" ===============
" Colorscheme
" ===============
:lua vim.g.tokyonight_style = "night"
colorscheme tokyonight

