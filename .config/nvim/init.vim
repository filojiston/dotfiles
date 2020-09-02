call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdTree'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdcommenter'

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

nnoremap <silent> <C-k><C-B> :NERDTreeToggle<CR>

let mapleader=","
map <Leader><Leader> <Plug>(easymotion-prefix)

noremap <Leader>y "+yy
noremap <Leader>Y "*yy
noremap <Leader>p "+p
noremap <Leader>P "*P

set mouse=a
set termguicolors
