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
let NERDTreeWinSize=30
let NERDTreeWinPos='left'

" Plugin 'kien/ctrlp.vim'
Plugin 'https://gitee.com/ithewei/ctrlp.vim'

" Plugin 'majutsushi/tagbar'
Plugin 'https://gitee.com/ithewei/tagbar'
let g:tagbar_width=30

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

" Plugin 'Valloric/YouCompleteMe'
Plugin 'https://gitee.com/ithewei/YouCompleteMe'
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tags_file=1
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings=1
let g:ycm_error_symbol='x'
let g:ycm_warning_symbol='!'
set completeopt=menu
let g:ycm_add_preview_to_completeopt=0
let g:ycm_key_invoke_completion='<C-d>'
let g:ycm_key_list_stop_completion = ['<Enter>']
let g:ycm_min_num_identifier_candidate_chars=3
let g:ycm_semantic_triggers={'c,cpp,python,java,go,erlang,perl,cs,lua,javascript' : ['re!\w{3}']}
nmap gt :YcmCompleter GoTo<CR>
" Plugin 'rdnetto/YCM-Generator'
Plugin 'https://gitee.com/ithewei/YCM-Generator'

" Plugin 'Shougo/echodoc.vim'
Plugin 'https://gitee.com/ithewei/echodoc.vim'
set noshowmode
let g:echodoc_enable_at_startup=1
let g:echodoc#type='echo'

" Plugin 'jiangmiao/auto-pairs'
Plugin 'https://gitee.com/ithewei/auto-pairs'

" Plugin 'tpope/vim-commentary'
Plugin 'https://gitee.com/ithewei/vim-commentary'
autocmd FileType c,cpp,java set commentstring=//\ %s

" Plugin 'tpope/vim-surround'
Plugin 'https://gitee.com/ithewei/vim-surround'

" Plugin 'tpope/vim-fugitive'
Plugin 'https://gitee.com/ithewei/vim-fugitive'

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

map <C-w><C-e> <Esc>:NERDTreeToggle<CR>
map <C-w><C-t> <Esc>:TagbarToggle<CR>

autocmd VimEnter * NERDTree
autocmd BufReadPost *.h,*.c,*.hpp,*.cc,*.cpp,*.cxx,*.py call tagbar#autoopen()
