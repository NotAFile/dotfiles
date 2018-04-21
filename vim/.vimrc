if &compatible
  set nocompatible
endif

scriptencoding utf-8
set encoding=utf-8

" dein stuff -------------------------
set runtimepath+=~/.vim/bundle/repos/github.com/Shougo/dein.vim
call dein#begin('~/.vim/bundle')

" Let dein manage dein
call dein#add('Shougo/dein.vim')

" Plugins
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/vimshell')
call dein#add('airblade/vim-gitgutter')
call dein#add('alvan/vim-closetag')
call dein#add('baverman/vial')
call dein#add('baverman/vial-http')
call dein#add('cespare/vim-toml')
call dein#add('easymotion/vim-easymotion')
call dein#add('godlygeek/tabular')
call dein#add('jceb/vim-orgmode')
call dein#add('kien/ctrlp.vim')
call dein#add('mbbill/undotree')
call dein#add('scrooloose/nerdtree')
call dein#add('sgur/vim-editorconfig')
call dein#add('sheerun/vim-polyglot')
call dein#add('tpope/vim-eunuch')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-obsession')
call dein#add('tpope/vim-sensible')
call dein#add('tpope/vim-speeddating')
call dein#add('tpope/vim-surround')
call dein#add('unblevable/quick-scope')
call dein#add('valloric/youcompleteme', { 'build': './install.py'})
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('w0rp/ale')
call dein#add('wellle/targets.vim')

call dein#end()

" If install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" End dein stuff -------------------------

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:airline_theme='jellybeans'

" Open NERDTree automatically
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>

set mouse=a

set expandtab
set tabstop=4
set autoindent
set shiftwidth=4

map <C-c> <ESC>

set ignorecase
set smartcase
set showcmd

" Don't clutter folders with swap files
set directory=$HOME/.vim/swap

" Save undo across sessions
set undofile
set undodir=$HOME/.vim/undo
" (if these don't work, create those paths)

noremap <leader>u :UndotreeShow<CR>
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1

au BufRead,BufNewFile *.as set syntax=cpp "angelscript

set list listchars=tab:▸\ ,trail:·,precedes:←,extends:→

" Trigger a quickscope highlight in the appropriate direction when pressing
" these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

let g:ale_fixers = {
\   'python': [
\       'yapf',
\       'isort',
\       'add_blank_lines_for_python_control_statements'
\   ],
\}
