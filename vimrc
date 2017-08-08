
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' "let Vundle manage itself
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/a.vim'
Plugin 'raimondi/delimitmate'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'itchyny/landscape.vim'
Plugin 'majutsushi/tagbar'
Plugin 'shougo/vinarise.vim'
Plugin 'mhinz/vim-signify'
Plugin 'fatih/vim-go'
Plugin 'yggdroot/indentline'
Plugin 'vim-scripts/matchit.zip'
Plugin 'KurtLiang/vim-typhoon-blade'
call vundle#end()

filetype plugin on
filetype plugin indent on

syntax enable
syntax on

set autoindent
set autoread
set backspace=indent,eol,start
set encoding=utf-8
set expandtab
set hlsearch
set ignorecase
set t_Co=256  "display color
set laststatus=2
set number
set cursorline
set scrolloff=5
set shiftwidth=4
set sidescrolloff=5
set smartindent
set tabstop=4
"set suffixesadd+=.rb
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8

colorscheme desert
"put all thses after 'set t_Co=256'
"override underline
"hi cursorline cterm=bold
" for grep background
"hi cursorline cterm=NONE ctermbg=DarkGrey
"hi Search ctermfg=Black ctermbg=LightRed cterm=NONE

let mapleader=','
let g:alternateExtensions_CPP = "h,H,inc,HPP,hpp"
let g:alternateExtensions_h = "cpp,c,cxx,cc,CC"
let NERDTreeIgnore = ['\.pyc$', '\.o', '\.O']
let g:cpp_class_scope_highlight = 1
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ]


let g:molokai_original = 1
let g:rehash256 = 1
let g:airline#extensions#tabline#enabled=1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_section_c = '%F'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_theme="badwolf"


let g:indentLine_setColors = 1
let g:indentLine_color_term = 239
"let g:indentLine_char = '|'

"function AddTafCodePath()
""    set path+=/home/tafjce/**
"endfunction


"keyboard mapping
nmap        /               <Plug>(easymotion-sn)
nnoremap    <Leader>l       :silent <C-u>nohls<cr><C-l>
nnoremap    <Leader>*       :silent execute  "vimgrep /\\<".expand("<cword>")."\\>/gj ".expand("%")<cr>
nnoremap    <Leader><Leader>* :silent execute  "vimgrep /\\<".expand("<cword>")."\\>/gj *.cpp *.c *.h"<cr>
"map         <F2>            :NERDTreeToggle<cr>
nnoremap    <F3>            :cp<Cr>
nnoremap    <F4>            :cn<cr>
"nnoremap    <F5>            :silent execute  "vimgrep /\\<".expand("<cword>")."\\>/gj *.cpp *.c *.h"<cr>
nmap        <F7>            :copen<cr>
nmap        <F8>            :A<cr>
nmap        <F9>            :TagbarToggle<cr>
nnoremap    [b              :bp<CR>
nnoremap    ]b              :bn<CR>
noremap     <Up>            k
noremap     <Down>          j
noremap     <Left>          h
noremap     <Right>         l
nnoremap    <Leader>f       :NERDTreeFind<cr>
nnoremap    <Leader>n       :NERDTreeToggle<cr>
nnoremap    <C-Left>        :tabp<cr>
nnoremap    <C-Right>       :tabn<cr>
nnoremap    <C-J>           <C-W><C-J>
nnoremap    <C-K>           <C-W><C-K>
nnoremap    <C-L>           <C-W><C-L>
nnoremap    <C-H>           <C-W><C-H>
nnoremap    <C-M>           %
nmap        <Leader>a       :Tabularize /
vmap        <Leader>a       :Tabularize /


"autocommand
"autocmd BufWritePost * call system("ctags -R")
au StdinReadPre * let s:std_in=1
au VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
au bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare

au VimEnter * au FileType * let b:match_words='\<DB_BEGIN\>:\<DB_END\>,\<FUN_BEGIN\>:\<FUN_END\>'

"au Syntax * RainbowParenthesesLoadBraces
" for grep background
"autocmd InsertEnter * highlight  CursorLine ctermbg=NONE
"autocmd InsertLeave * highlight  CursorLine ctermbg=DarkGrey


"command
":FixWhitespace
"use [# or #] navigate up/down for #if/#endif  #ifdef/#endif etc
"help signify
"
"

