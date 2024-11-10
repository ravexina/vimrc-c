set nocompatible
set termbidi
syntax on

call plug#begin('~/.vim/plugged')

Plug 'rafi/awesome-vim-colorschemes'
Plug 'unblevable/quick-scope'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'ycm-core/YouCompleteMe'
Plug 'Raimondi/delimitMate'
Plug 'sheerun/vim-polyglot'

call plug#end()

colorscheme solarized8
set termguicolors
set background=dark
set cursorline
highlight CursorLineNr cterm=bold ctermfg=black ctermbg=green

set ai
set number
set expandtab
set tabstop=4
set shiftwidth=4
set updatetime=150
set scrolloff=6
set colorcolumn=88
set signcolumn=yes
set showcmd
set hidden
set clipboard=unnamedplus

set hlsearch
set incsearch
set ignorecase
set smartcase
set nostartofline


augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc  source %
augroup end


let mapleader = ','
noremap H  <c-^>
nnoremap Y  y$
nnoremap <cr>           :nohlsearch<cr>


" Ale
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_delay = 2000
let g:ale_fix_on_save = 1
let g:ale_fixers =  {'*': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_lint_on_text_changed = 'always'


" Fzf
nnoremap <leader>f :FZF<cr>
nnoremap <leader>F :Files<cr>
nnoremap <leader>l :BLines<cr>
nnoremap <leader>L :Rg<cr>
nnoremap <leader>T :Filetypes<cr>
let $FZF_DEFAULT_COMMAND = '[ -f .rgignore ] && rg --files --hidden --no-ignore --ignore-file .rgignore --glob "!.git/*" || rg --files --hidden --glob "!.git/*"'
