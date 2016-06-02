 
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' "let Vundle manage itself
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/a.vim'
Plugin 'raimondi/delimitmate'
"Plugin 'taglist.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'kien/rainbow_parentheses.vim'
"Plugin 'klen/python-mode'

call vundle#end()
filetype plugin indent on

syntax enable
syntax on
colorscheme desert

set autoindent
set autoread
set backspace=indent,eol,start
set encoding=utf-8
set expandtab
set hlsearch
set ignorecase
set number
set scrolloff=5
set shiftwidth=4
set sidescrolloff=5
set smartindent
set tabstop=4
"set suffixesadd+=.rb
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8

let mapleader=','
let g:alternateExtensions_CPP = "h,H,inc,HPP,hpp"
let g:alternateExtensions_h = "cpp,c,cxx,cc,CC"
let NERDTreeIgnore = ['\.pyc$', '\.o', '\.O']
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:cpp_class_scope_highlight = 1

"function AddTafCodePath()
""    set path+=/home/tafjce/**
"endfunction

"keyboard mapping
nmap        /               <Plug>(easymotion-sn)
nnoremap    <silent> <C-l>  :<C-u>nohls<cr><C-l>
map         <F2>            :NERDTreeToggle<cr>
nnoremap    <F3>            :cp<Cr>
nnoremap    <F4>            :cn<cr>
nnoremap    <F5>            :call AddTafCodePath()<cr>
nnoremap    <F7>            :TlistToggle<cr>
nmap        <F8>            :A<cr>
"noremap     <Up>            <Nop>
"noremap     <Down>          <Nop>
"noremap     <Left>          <Nop>
"noremap     <Right>         <Nop>

nmap <Leader>jt          :TlistOpen<cr>
nmap <Leader>a           :Tabularize /
vmap <Leader>a           :Tabularize /


"autocommand
"autocmd BufWritePost * call system("ctags -R")
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
