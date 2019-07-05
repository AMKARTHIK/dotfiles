set nocompatible              " be iMproved, required
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
Plugin 'airblade/vim-gitgutter'
Plugin 'jreybert/vimagit'

"colors
Plugin 'sheerun/vim-polyglot'
Plugin 'joshdick/onedark.vim'


Plugin 'kien/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'powerline/powerline'
Plugin 'majutsushi/tagbar'
"Plugin 'othree/xml.vim'
"Plugin 'avakhov/vim-yaml'
"Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-commentary'
"Plugin 'easymotion/vim-easymotion'
"Plugin 'sjl/gundo.vim'
"Plugin 'tpope/vim-surround'
Plugin 'groenewege/vim-less'
Plugin 'prettier/vim-prettier'

"Google plugins
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
Plugin 'google/vim-searchindex'

"fzf
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'

Plugin 'chrisbra/csv.vim'
Plugin 'nathanaelkane/vim-indent-guides'

"nert tree
"Plugin 'scrooloose/nerdtree'
"Plugin 'Xuyuanp/nerdtree-git-plugin'

"whitespace
Plugin 'ntpeters/vim-better-whitespace'


" All of your Plugins must be added before the following line
call vundle#end()            " required
call glaive#Install()
"========================================================================
" To detect filetype, indent, plugin
"filetype plugin on
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

set incsearch
set hlsearch

"command line
set history=200
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

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
let g:netrw_list_hide='.*\.swp$,.*\.pyc,.*\.svn,.*\.git,.*\.ctrlp,.*\.env,.*\.github,.*\.settings,.*\.project,.*\.pydevproject,.*\.tx$,.*\.mail,.*\.venv,Pipfile*,__pycache__,.*\.autoenv'
"'\v\.(swp|pyc|env|ctrlp|project|pydevproject|*)$'
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

let g:netrw_banner = 0
"let g:netrw_liststyle = 3

"
"for matchit
runtime macros/matchit.vim "to run matchit for matching angle brackets

"For ctrlP
let g:ctrlp_root_markers = ['.ctrlp']
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/](doc|tmp|node_modules)',
            \ 'file': '\v\.(exe|so|dll|pyc)$',
            \ }

let g:csv_delim=','
let g:csv_nl = 1
let g:csv_str = {'deleim':""}

"=======================================================================================================
"mappings

"make kj as Esc and disable Esc
inoremap kj <Esc>
inoremap <Esc> <NOP>

"split line
map K i<Enter>kj

"Autoformat mappings
noremap <F3> :FormatCode<CR>
noremap <C-F3> :Autoformat<CR>
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
":map <F7> :checktime<CR>
":map! <F7> <C-O>:checktime<CR>

"gundo
"let g:gundo_prefer_python3 = 1
"let g:gundo_right = 1
"nnoremap <C-F7> :GundoToggle<CR>

"tagbar
let g:tagbar_ctags_bin = '/opt/ctags-installed/bin/ctags'
let g:tagbar_left=1
let g:tagbar_show_linenumbers = -1

nnoremap <C-F8> :TagbarToggle<CR>

" function VertProjectFiles()
"     :Vex
"     :ProjectFiles
" endfunction


" set listchars=eol:$,nbsp:_,tab:>-,trail:~,extends:>,precedes:<
" nnoremap <C-F5> :set list!<CR>
nnoremap <F4> :ToggleWhitespace<CR>
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
nnoremap <leader>t :term ++rows=10<cr>

"window resizing mapping
nnoremap <leader>e <C-W>=
nnoremap <leader>\ <C-W>\|
nnoremap <leader>\\ <C-W>_

"hlhide
nnoremap <C-n> :nohlsearch<CR>

"This open's the MRU
" noremap <leader>r :CtrlPBuffer<CR>
noremap <leader>r :Buffers<CR>
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
iab pdb. pdb.set_trace()

"==========================================================================================================
"local leader
let maplocalleader = "\\"

" auto cmd group
augroup file_type
    autocmd!
    autocmd FileType netrw :set relativenumber
    autocmd FileType nerdtree setlocal relativenumber
    autocmd FileType rst :set nofoldenable
    " autocmd FileType tagbar :set relativenumber
augroup END
"===========================================================================================================
"Nerdcommenter
" Add spaces after comment delimiters by default
"let g:NERDSpaceDelims = 1
"
" " Use compact syntax for prettified multi-line comments
"let g:NERDCompactSexyComs = 1
"
" " Align line-wise comment delimiters flush left instead of following code
" indentation
"let g:NERDDefaultAlign = 'left'
"
" " Set a language to use its alternate delimiters by default
"let g:NERDAltDelims_java = 1
"
" " Add your own custom formats or override the defaults
"let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
"
" " Allow commenting and inverting empty lines (useful when commenting a
" region)
"let g:NERDCommentEmptyLines = 1
"
" " Enable trimming of trailing whitespace when uncommenting
"let g:NERDTrimTrailingWhitespace = 1

"editor config
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:EditorConfig_max_line_indicator="line"

"prettier
let g:prettier#exec_cmd_path = '/usr/local/bin/prettier'
let g:prettier#autoformat = 0
let g:prettier#config#tab_width = 4
" autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

"=======================================================
let g:indent_guides_guide_size = 1
noremap <C-F7> :IndentGuidesToggle<CR>


"==========================================
" my custom vim functions

function! s:find_customer_path()
    let l:command = 'cust-path -p ' . expand("%")
    return system(command)[:-2]
endfunction

function! s:find_modules_path()
    let l:command = 'cust-path -m -p ' . expand("%")
    return system(command)[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_customer_path()
noremap <C-F6> :ProjectFiles<CR>

command! ModuleFiles execute 'Files' s:find_modules_path()
noremap <F7> :ModuleFiles<CR>

nnoremap <F6> :Vex<CR>

"fzf mappings

"=====================
"
"nerdtree conf

nnoremap <silent> <F5> :Ex<CR>
"let NERDTreeQuitOnOpen = 1
"let NERDTreeAutoDeleteBuffer = 1
"let NERDTreeMinimalUI = 1
"let NERDTreeDirArrows = 1
"let NERDTreeShowLineNumbers=1
let g:polyglot_disabled = ['graphql']

"python with virtualenv support

py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    exec(open(activate_this).read(), dict(__file__=activate_this))
EOF


"testing system clipboard
