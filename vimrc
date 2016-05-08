 

set encoding=utf-8
syntax enable
syntax on

colorscheme desert


filetype plugin indent on

set autoread
set mouse=a
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
set smartindent
set guifont=Droid\ Sans\ Mono\ 11
set suffixesadd+=.rb
set laststatus=2

"keyboard mapping
nnoremap <C-s>  <esc>:w<cr>
vnoremap <C-s>  <esc>:w<cr>
inoremap <C-s>  <esc>:w<cr>
cnoremap <C-s>	<esc>:w<cr>
nnoremap <silent> <C-l> :<C-u>nohlsearch<cr><C-l>

nmap <F6> :cp<cr>
nmap <F7> :cn<cr>

noremap <Up>	<Nop>
noremap <Down>	<Nop>
noremap <Left>	<Nop>
noremap <Right> <Nop>



"autocommand
"autocmd BufWritePost * call system("ctags -R")
