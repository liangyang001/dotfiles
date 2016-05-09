 
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
set number
set scrolloff=5
set shiftwidth=4
set sidescrolloff=5
set smartindent
set softtabstop=4
set suffixesadd+=.rb

let mapleader=','

function AddTafCodePath()
    set path+=/home/tafjce/**
endfunction

"keyboard mapping
nmap        /               <Plug>(easymotion-sn)
nnoremap    <silent> <C-l>  :<C-u>nohls<cr><C-l>
map         <F2>            :NERDTreeToggle<cr>
nmap        <F3>            :cp<cr>
nmap        <F4>            :cn<cr>
nmap        <F8>            :A<cr>
"noremap     <Up>            <Nop>
"noremap     <Down>          <Nop>
"noremap     <Left>          <Nop>
"noremap     <Right>         <Nop>

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>



"autocommand
"autocmd BufWritePost * call system("ctags -R")
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
