"set nocompatible              " be iMproved, required
"filetype off                  " required

"========================================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"git plugins
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'

Plugin 'kien/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'powerline/powerline'
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
"========================================================================
" To detect filetype, indent, plugin
filetype plugin indent on    " required

"my customizations

"syntax and indentation related
syntax on "For syntax hilight
set autoindent " copy indent from the current line to new line
set sw=4
set tabstop=4
set smartindent " automatically insert one extra level indentation in some cases.
set expandtab
"set textwidth=79

"file manipulation line save close etx
set autowrite "write the file when closing it auto save
set autoread

"====================================================================================================
"Edition customizations

"power line for vim and bash shell
"https://www.tecmint.com/powerline-adds-powerful-statuslines-and-prompts-to-vim-and-bash/
"reffer this link to install it in another system
set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

"ruler
set ruler
"
"status line filename
set laststatus=2
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]

"line number and relative line number
set number
set relativenumber

"color scheme related
set t_Co=256
let g:onedark_termcolors=256
set background=light
colorscheme onedark

"Common conf
set undodir=~/.vim/undodir "set undo dir
set shell=/bin/bash "set normal bash as shell for vim


"tab splitting options
set splitbelow
"
"Netrw conf
let g:netrw_list_hide='.*\.swp$,.*\.pyc,.*\.git,.*\.ctrlp,.*\.env,.*\.github,.*\.settings,.*\.project,.*\.pydevproject,.*\.tx$,.*\.mail,.*\.venv,Pipfile*,__pycache__'
"'\v\.(swp|pyc|env|ctrlp|project|pydevproject|*)$'
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
"
"for matchit
runtime macros/matchit.vim "to run matchit for matching angle brackets

"For ctrlP
let g:ctrlp_root_markers = ['.ctrlp']
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/](doc|tmp|node_modules)',
            \ 'file': '\v\.(exe|so|dll|pyc)$',
            \ }

"=======================================================================================================
"mappings

"make kj as Esc and disable Esc
inoremap kj <Esc>
inoremap <Esc> <NOP>

"split line
map K i<Enter>kj

"Autoformat mappings
noremap <F3> :Autoformat<CR>
"auto format options for py files
let g:formatdef_autopep8 = "'autopep8 -a -a -i'"
let g:formatters_python = ['autopep8']

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"ctrl-p mappings


"autoread
:map <F7> :checktime<CR>
:map! <F7> <C-O>:checktime<CR>

"tagbar
nnoremap <F8> :TagbarToggle<CR>
nnoremap <F5> :Ex<CR>
nnoremap <F6> :Vex<CR>

"=======================================================================================================

"leader and its mapping

let mapleader=" "
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>wq :wq<cr>
nnoremap <leader>q :q<cr>
"move split window
nnoremap <leader>l <C-W>L
nnoremap <leader>h <C-W>H
nnoremap <leader>k <C-W>K
nnoremap <leader>j <C-W>J

"window resizing mapping
nnoremap <leader>e <C-W>=
nnoremap <leader>\ <C-W>\|
nnoremap <leader>\\ <C-W>_

"This open's the MRU
noremap <leader>r :CtrlPBuffer<CR>
"=======================================================================================================
"
"disable bracketed paste
set t_BE=

"=========================================================================================================
"
"My abb
cab jodp /opt/odoo/10.0-JOD/**/*.py
cab jodx /opt/odoo/10.0-JOD/**/*.xml
iab ipdb import pdb
iab pdb pdb.set_trace()

"==========================================================================================================
"local leader
let maplocalleader = "\\"

" auto cmd group
augroup file_type
    autocmd!
    autocmd FileType python nnoremap <buffer> <localleader>c I#<Esc>
    autocmd FileType xml nnoremap <buffer> <localleader>c I<!--<Esc>A--><Esc>
    autocmd FileType netrw :set relativenumber
augroup END
