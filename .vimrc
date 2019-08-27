"===============================================================================
" General
"===============================================================================

" Enable mouse
set mouse=a

" Show line number
set number

" Auto read when a file is changed from the outside
set autoread

" Hieght of command bar
"set cmdheight=2

" Hightlight search results
set hlsearch

" ????
set magic

" Show matching brackets
set showmatch

" Set tab to 4 spaces. 'ts' means tabstop.
set ts=4
set expandtab

" Hightlight the 80th column
high ColorColumn ctermbg = gray
set colorcolumn=80

" Hightlight current line
set cursorline

"===============================================================================
" Vundle Plugins
"===============================================================================

set nocompatible	" required
filetype off		" required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'	" required

" Plugin begins here.
" Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/powerline-fonts'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'

" All of Plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on	" required
" To ignore plugin indent changes, instead use:
"filetype plugin on


" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ

"===============================================================================
" Colorscheme
"===============================================================================

syntax enable

" solarized
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

"set background=dark
"colorscheme evening

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE




"===============================================================================
" NERDTree
"===============================================================================

" Open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree

" Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" Exit NERDTree if there is only one window opened in vim
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif