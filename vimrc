 
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

call vundle#end()
filetype plugin indent on

syntax enable
syntax on
colorscheme desert

set encoding=utf-8
set autoread
set number
set hlsearch
set scrolloff=5
set sidescrolloff=5
set statusline=2
set cmdheight=1
"share external clipboard
set clipboard=unnamed
set shiftwidth=4
set softtabstop=4
set autoindent
set expandtab
set smartindent
set guifont=Droid\ Sans\ Mono\ 11
set suffixesadd+=.rb

let mapleader=','

"keyboard mapping
nmap        /               <Plug>(easymotion-sn)
nnoremap    <silent> <C-l>  :<C-u>nohlsearch<cr><C-l>
map         <F3>            :NERDTreeToggle<cr>
nmap        <F6>            :cp<cr>
nmap        <F7>            :cn<cr>
noremap     <Up>            <Nop>
noremap     <Down>          <Nop>
noremap     <Left>          <Nop>
noremap     <Right>         <Nop>

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>


"autocommand
"autocmd BufWritePost * call system("ctags -R")
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
