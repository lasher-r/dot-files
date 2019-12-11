set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" cpy and paste
set clipboard=unnamedplus

"auto apply changes while in vimrc
autocmd! bufwritepost .vimrc source %

" enable syntax highlighting
syntax enable

" show line numbers
set number
"
" set tabs to 4 spaces
set ts=4

" indent when moving to next line of code
set autoindent

" expand tabs into spaces
set expandtab

" when using the << or >> comands, shift by 4 spaces
set shiftwidth=4
"
" show visual line under cursor pos
set cursorline

" show the matching part of the pair for [] {} ()
set showmatch


" tab nav
nnoremap	tl	:tabprev<CR>
nnoremap	th	:tabnext<CR>
nnoremap	tn	:tabnew 

" no swp
set noswapfile

" mouse
" set mouse=a

" nerdTree
" open automatically
autocmd vimenter * NERDTree
" togle on ctl-n
map <C-n> :NERDTreeToggle<CR>
" set cursor in editor
autocmd VimEnter * wincmd p
" close vim if nerdtree is the only thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


