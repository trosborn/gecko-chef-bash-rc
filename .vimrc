set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'marijnh/tern_for_vim'
" Fancy status bar!
Plug 'bling/vim-airline'
" Autoclose HTML with Ctrl _
Plug 'vim-scripts/closetag.vim'
" Magic alignment 
Plug 'godlygeek/tabular'
" indent guidelines
" Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'Yggdroot/indentLine' 

" Not using these right now..
" Plugin 'jnurmine/Zenburn'
" Plugin 'scrooloose/syntastic'
" Remote pair programming
" Plugin 'Floobits/floobits-vim'
" Fuzzy file searching
" Plugin 'kien/ctrlp.vim'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'Shougo/unite.vim'

call plug#end()

set t_Co=256
syntax on
set background=dark

" This is for delimiMate. Maps C-c to CR -> command mode -> newline
" and C-x to -> command mode -> end of line
inoremap <C-c> <CR><Esc>O
imap <C-x> <Esc>A 

" making switching splits easy
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitright
set splitbelow

" Reload .vimrc automagically. I don't know if this actually works?
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" omni completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" When leaving insert mode, leave the cursor where it was, instead of the
" default of moving it one character to the left
" noremap <Esc> <Esc>l

" Make all tabs equal to 2 spaces
set expandtab
set shiftwidth=2
set softtabstop=2

" Buffer switching
:nmap <C-e> :b#<CR>
:nmap <C-n> :bnext<CR>
:nmap <C-p> :bprev<CR>

" Toggle NERDTree
:nmap \e :NERDTreeToggle<CR>

" Enable fancy status line
set laststatus=2
" Display buffer tabs
let g:airline#extensions#tabline#enabled = 1
