set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'
Plugin 'https://gitee.com/ithewei/Vundle.vim'
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

"Plugin 'vim-airline/vim-airline'

" Plugin 'scrooloose/nerdtree'
Plugin 'https://gitee.com/ithewei/nerdtree'
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.o$','\.lo$','\.obj$','\.pyc$']
let NERDTreeWinPos='right'
" Plugin 'scrooloose/nerdcommenter'
Plugin 'https://gitee.com/ithewei/nerdcommenter'

" Plugin 'taglist.vim'
Plugin 'https://gitee.com/ithewei/taglist.vim'
set tags=tags;
"set autochdir
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

" Plugin 'cscope.vim'
Plugin 'https://gitee.com/ithewei/cscope.vim'
if has("cscope")
    set cst " cscopetag
    set csto=0
    set nocsverb
    if filereadable("cscope.out")
        cs add cscope.out
    elseif $CSCOPE_DB!=""
        cs add $CSCOPE_DB
    endif
    set csverb
    nmap <Leader>fa :cs find a <C-R><C-W><CR>
    nmap <Leader>fc :cs find c <C-R><C-W><CR>
    nmap <Leader>fd :cs find d <C-R><C-W><CR>
    nmap <Leader>fe :cs find e <C-R><C-W><CR>
    nmap <Leader>ff :cs find f <C-R><C-W><CR>
    nmap <Leader>fg :cs find g <C-R><C-W><CR>
    nmap <Leader>fi :cs find i <C-R><C-W><CR>
    nmap <Leader>fs :cs find s <C-R><C-W><CR>
    nmap <Leader>ft :cs find t <C-R><C-W><CR>
endif

" Plugin 'jlanzarotta/bufexplorer'
Plugin 'https://gitee.com/ithewei/bufexplorer'

" Plugin 'winmanager'
Plugin 'https://gitee.com/ithewei/winmanager'
let g:winManagerWidth=30
let g:winManagerWindowLayout="FileExplorer|BufExplorer"

" Plugin 'Auto-Pairs'
Plugin 'https://gitee.com/ithewei/Auto-Pairs'

" Plugin 'Valloric/YouCompleteMe'
Plugin 'https://gitee.com/ithewei/YouCompleteMe'
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_file=1
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings=1
let g:ycm_error_symbol='x'
let g:ycm_warning_symbol='!'
set completeopt-=preview
let g:ycm_key_invoke_completion='<C-d>'
let g:ycm_key_list_stop_completion = ['<Enter>']
nmap gt :YcmCompleter GoTo<CR>
" Plugin 'rdnetto/YCM-Generator'
Plugin 'https://gitee.com/ithewei/YCM-Generator'

" Plugin 'Markdown'
Plugin 'https://gitee.com/ithewei/Markdown'

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

map <C-w><C-b> <Esc>:WMToggle<CR>
map <C-w><C-t> <Esc>:TlistToggle<CR>
map <C-w><C-e> <Esc>:NERDTreeToggle<CR>

map <F2> <Esc>:TlistToggle<CR>
map <F3> <Esc>:NERDTreeToggle<CR>

" autocmd vimenter * NERDTree
