set nocompatible

" Make search case smart
set ignorecase
set smartcase

" Incremental search because it's great
set is

" Highlight search matches
set hlsearch

" Make backspace work as expected (for me)
set backspace=indent,eol,start

" Syntax hightlighting
syntax on

" Leader logic
let mapleader = "," " map leader to comma
" set timeoutlen 500 " Set timeout length to 500ms

" Relative line numbers
set relativenumber


" ====================
" PLUGINS START
" ====================
call plug#begin()

" Tim Pope
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-commentary'

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Autoformatter
Plug 'vim-autoformat/vim-autoformat'

" ALE
Plug 'dense-analysis/ale'

call plug#end()
" ====================
" PLUGINS END
" ====================

" ====================
" REMAPS BEGIN
" ====================

" Edit this file
nnoremap <leader>vrc :e! $MYVIMRC<CR>

" Source this file
nnoremap <leader>r :source $MYVIMRC<CR>


" Navigation
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>l <C-w>l
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>v <C-w>v
nnoremap <leader>s <C-w>s
nnoremap <leader>bg <C-z>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bd :bd<CR>

" Clipboard
xnoremap <leader>y "*y

" Tabs
nnoremap tn :tab split<CR>
nnoremap tc <C-w>c

" FZF
nnoremap <leader>ob :Buffers<CR>
nnoremap <leader>og :GFiles?<CR>
nnoremap <leader>e :Files<CR>

" Clear search highlight
nnoremap <CR> :noh<CR>

" Omnicompletion
inoremap <expr> <tab> pumvisible() ? '<C-n>' : '<S-tab>'
inoremap <expr> <S-tab> pumvisible() ? '<C-p>' : '<S-tab>'

" Ale
nnoremap gd :ALEGoToDefinition<CR>

" ====================
" REMAPS END
" ====================


" ====================
" FZF
" ====================

" ====================
" ALE
" ====================
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc

call ale#linter#Define('c', {
\   'name': 'clangd',
\   'lsp': 'stdio',
\   'executable': 'clangd',
\   'command': '%e',
\   'project_root': '/path/to/root_of_project',
\})
