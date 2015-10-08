set nocompatible              " be iMproved, required

call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'marijnh/tern_for_vim'
Plug 'bling/vim-airline'

" Not using these right now..

" Plug 'mxw/vim-jsx'
" Plug 'vim-scripts/closetag.vim'
" Plug 'godlygeek/tabular'
" Plug 'jelera/vim-javascript-syntax'
" Plug 'nathanaelkane/vim-indent-guides'
" Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'Yggdroot/indentLine' 

" Plugin 'jnurmine/Zenburn'
" Plug 'scrooloose/syntastic'
" Remote pair programming
" Plugin 'Floobits/floobits-vim'
" Fuzzy file searching
" Plugin 'kien/ctrlp.vim'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'Shougo/unite.vim'

call plug#end()

filetype plugin indent on

set t_Co=256
set background=dark

syntax on

" This is for delimiMate. Maps C-c to CR -> command mode -> newline
inoremap <C-c> <CR><Esc>O

" Makes switching splits easy
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitright
set splitbelow

" Reload .vimrc automagically. 
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" Omni completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" When leaving insert mode, leave the cursor where it was, 
" instead of the default of moving it one character to the left
" noremap <Esc> <Esc>l

" Go Go Go
" Go specific settings
augroup golang
  au!
  au FileType go setlocal noexpandtab tabstop=8 softtabstop=8 shiftwidth=8
augroup END

" Make all tabs equal to 2 spaces
set expandtab shiftwidth=2 softtabstop=2

" Buffer switching
nmap <C-e> :b#<CR>
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" Toggle NERDTree
nmap \e :NERDTreeToggle<CR>

" Enable fancy status line
set laststatus=2
" Display buffer tabs
let g:airline#extensions#tabline#enabled = 1

" Temp Files
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

