"""""""""""""""""""""""""""""""""""""""""""""""""""
" ithewei's vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible  " use vim settings, rather than vi

syntax on
filetype plugin indent on

let $LANG='en'
set encoding=utf8
set ffs=unix,dos,mac

set autoread  " auto read when file changed
set nobackup  " no backup file
set noswapfile  " no swap file
set history=100  " history commands
set nu  "number: show line number
set ruler  " show cursor pos
set showcmd  " show command
set cmdheight=2

set ic  " ignorecase
set scs  " smartcase
set is  " incsearch
set hls  " hlsearch

set ai  " autoindent
set sta  " smarttab
set et  "expandtab
set shiftwidth=4
set tabstop=4

set textwidth=80
set nowrap
set whichwrap=b,s,<,>

set list  " show space chars
set listchars=tab:>-,trail:~

"""""""""""""""""""""""""""""""""""""""""""""""""
" GUI
"""""""""""""""""""""""""""""""""""""""""""""""""
set mouse-=a  " disable mouse

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme molokai
set background=dark

set laststatus=2  " 0: noshow 1: >1show 2: always show
set statusline=\ %F%r%m%h%w\ [%{&ff}]\ \[%{&enc}]\ %y\ (%l,%c)\ %LL
hi StatusLine cterm=bold ctermbg=Cyan
au InsertEnter * hi StatusLine cterm=bold ctermbg=Green
au InsertLeave,WinEnter * hi StatusLine cterm=bold ctermbg=Cyan
au WinLeave * hi StatusLine cterm=bold ctermbg=White

set cursorline
hi CursorLine cterm=none ctermbg=DarkGray
au WinLeave * set nocursorline
au WinEnter * set cursorline

"""""""""""""""""""""""""""""""""""""""""""""""
" commands
"""""""""""""""""""""""""""""""""""""""""""""""
" use W when forget sudo
command W w !sudo tee % > /dev/null

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""
" see plugin.vim

""""""""""""""""""""""""""""""""""""""""""""""""
" keymap
""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","

" parentheses auto-complete
inoremap { {<CR>}<Esc>O
inoremap [ []<Esc>i
inoremap ( ()<Esc>i
inoremap < <><Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap ` ``<Esc>i

" save
map <C-s> <Esc>:w<CR>
inoremap <C-s> <Esc>:w<CR>

" common navigate
map <Down> j
map <Up> k
map <Left> h
map <Right> l

map <Home> 0
map <End> $

" emacs navigate
map <C-n> j
map <C-p> k
map <C-b> h
map <C-f> l

map <C-a> 0
map <C-e> $

inoremap <C-n> <Esc>ja
inoremap <C-p> <Esc>ka
inoremap <C-b> <Esc>i
inoremap <C-f> <Esc>la
inoremap <C-a> <Esc>I
inoremap <C-e> <Esc>A

map  <C-g> <Esc>:w<CR>
imap <C-g> <Esc>:w<CR>
cmap <C-g> <Esc>:w<CR>
vmap <C-g> <Esc>:w<CR>

" window navigate
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" tabs navigate
map <C-t>l <Esc>:tabNext<CR>
map <C-t>h <Esc>:tabprevious<CR>
map <C-t>0 <Esc>:tabfirst<CR>
map <C-t>$ <Esc>:tablast<CR>

" buffer navigate
map <C-b>l <Esc>:bNext<CR>
map <C-b>h <Esc>:bprevious<CR>
map <C-b>0 <Esc>:bfirst<CR>
map <C-b>$ <Esc>:blast<CR>
map <C-b>1 <Esc>:b1<CR>
map <C-b>2 <Esc>:b2<CR>
map <C-b>3 <Esc>:b3<CR>
map <C-b>4 <Esc>:b4<CR>
map <C-b>5 <Esc>:b5<CR>
map <C-b>6 <Esc>:b6<CR>
map <C-b>7 <Esc>:b7<CR>
map <C-b>8 <Esc>:b8<CR>
map <C-b>9 <Esc>:b9<CR>

