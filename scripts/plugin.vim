set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {
" 'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {
" 'name': 'newL9'}
"
" All of your Plugins must be added before the following line
Plugin 'Auto-Pairs'

Plugin 'The-NERD-tree'
let NERDTreeIgnore=['\.o','.pyc']
let NERDTreeWinPos='left'
let NERDTreeWinSize=32

Plugin 'minibufexpl.vim'

Plugin 'SuperTab'

Plugin 'Syntastic'

Plugin 'taglist.vim'
set tags=tags;
set autochdir
let Tlist_Show_One_File=1
let Tlist_Use_Right_Window=1
let Tlist_WinWidth=32
let Tlist_Exit_OnlyWindow=1

Plugin 'cscope.vim'

Plugin 'Markdown'

call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

map <C-w><C-e> <Esc>:NERDTreeFocus<CR>
map <C-w><C-t> <Esc>:TlistOpen<CR>

