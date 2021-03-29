call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdcommenter'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'ctrlpvim/ctrlp.vim'


call plug#end()

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set copyindent

set hidden
set number
set wildmenu
set showmatch

let mapleader=","
map <Leader><Leader> <Plug>(easymotion-prefix)

noremap <Leader>y "+yy
noremap <Leader>Y "*yy
noremap <Leader>p "+p
noremap <Leader>P "*P

set mouse=a
set termguicolors

colorscheme gruvbox 

let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-pairs',
    \ ]

inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
