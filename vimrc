set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'kien/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'powerline/powerline'
"Plugin 'scrooloose/nerdtree'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
":PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"my customizations
syntax on
set autoindent
set autowrite
set sw=4
"set textwidth=79
set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2
set number
set t_Co=256
colorscheme minimalist
set tabstop=4
set smartindent
set expandtab
set relativenumber
set undodir=~/.vim/undodir
set shell=/bin/bash
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
inoremap kj <Esc>
inoremap <Esc> <NOP>
"nnoremap <up> <C-W><C-K>
"nnoremap <down> <C-W><C-J>
"nnoremap <left> <C-W><C-H>
"nnoremap <right> <C-W><C-L>
set splitbelow
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
"map <C-n> :NERDTreeToggle<CR>
map K i<Enter>kj
"for autoformat
noremap <F3> :Autoformat<CR>

"auto format options for py files
let g:formatdef_autopep8 = "'autopep8 -a -a'"
let g:formatters_python = ['autopep8']

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

noremap <F4> :CtrlPBuffer<CR>

let g:netrw_list_hide= '.*\.swp$,.*\.pyc'
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
" Set auto read when a file is changed from the outside
set autoread
