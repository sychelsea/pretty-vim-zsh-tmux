"===============================================================================
" Hotkeys
"===============================================================================
" open/close nerdtree                   Enter
" search                                Ctrl f
" enable/disable folding (default)      zi
" open folding (default)                zo / Space
" close folding (default)               zc


"===============================================================================
" General
"===============================================================================
" Note: All the color configurations must be set after colorscheme

" Enable mouse
set ttymouse=xterm2 " make it works with tmux
set mouse=a

" Show line number
set number

" Auto read when a file is changed from the outside
set autoread

" Set regex model as magic
set magic

" Show matching brackets
set showmatch

" Set tab to 4 spaces. 
set ts=4            " tab stop
set shiftwidth=4    " shift width
set softtabstop=4
set expandtab

" Hightlight the 80th column
set colorcolumn=80

" Hightlight current line
set cursorline

" Disable word wrapping
set wrap!

" Set horizontal scroll
set sidescroll=4

" Set folding
function! MyFolding()
    if &foldenable == 0
        set foldcolumn=2
        set foldenable
    else
        set foldcolumn=0
        set nofoldenable
    endif
endfunction

set foldmethod=indent
set foldcolumn=0
set foldnestmax=2
set nofoldenable

" 'zi' will inverse foldenable. Reset 'zi' to change foldcolumn as well.
:nnoremap zi :call MyFolding()<CR>


"===============================================================================
" Search
"===============================================================================

" Hightlight search results
set hlsearch

" Show matches online when typing searching pattern
set incsearch

" Be smart about cases
set ignorecase
set smartcase

" Use Ctrl-f to start search
:nnoremap <C-F> /


"===============================================================================
" Vundle Plugins
"===============================================================================

set nocompatible	" required
filetype off		" required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'	" required

" Plugin begins here.

" Color themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'tomasr/molokai'
Plugin 'fmoralesc/molokayo'
Plugin 'rakr/vim-one'

" syntax
Plugin 'hdima/python-syntax'

" Airline and its color themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/powerline-fonts'

Plugin 'scrooloose/nerdtree'
"Plugin 'Yggdroot/indentLine'

" Auto complete
Plugin 'ycm-core/YouCompleteMe'
Plugin 'artur-shaik/vim-javacomplete2'
" Plugin 'davidhalter/jedi-vim'  " Disabled because it works too slowly when loading tensorflow 

" AutoFormattor
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'  "configure codefmt's maktaba flags. See`:help :Glaive` for usage.

" All of Plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on	" required
" To ignore plugin indent changes, instead use:
filetype plugin on

" the glaive#Install() should go after the "call vundle#end()"
call glaive#Install()
" Optional: Enable codefmt's default mappings on the <Leader>= prefix.
Glaive codefmt plugin[mappings]
Glaive codefmt google_java_executable=`expand('java -jar $HOME/.vim/google-java-format-1.7-all-deps.jar')`

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
set t_Co=256
set background=dark


" Solarized
"let g:solarized_termcolors=256
"let g:solarized_termtrans = 1
"colorscheme solarized

" PaperColor
let g:PaperColor_Theme_Options = {
  \   'theme': { 
  \     'default.dark': {
  \       'transparent_background': 1,
  \       'allow_bold': 1,
  \       'allow_italic': 0
  \     }
  \   },
  \   'language': {
  \     'python': {
  \       'highlight_builtins' : 1
  \     },
  \     'cpp': {
  \       'highlight_standard_library': 1
  \     },
  \     'c': {
  \       'highlight_builtins' : 1
  \     }
  \   }
  \ }
colorscheme PaperColor

" Molokaic
"let g:molokai_original = 1
"colorscheme molokai

" One
"set termguicolors
"let g:one_allow_italics = 1 " Enable italic for comments
"colorscheme one

"set background=dark
"colorscheme evening

" If there is trouble showing the background color, uncomment following lines.
"highlight Normal ctermbg=NONE
"highlight nonText ctermbg=NONE

" Change search highlight color to light yellow
hi Search ctermbg=227
" Change the color of folding rows columns
hi Folded ctermbg=Black ctermfg=147
hi FoldColumn ctermbg=Black ctermfg=147

"high ColorColumn ctermbg=236 guibg=#FFFFFF



"===============================================================================
" Airline
"===============================================================================

" Enable powerline fonts
let g:airline_powerline_fonts = 1

" Set airline color theme
" light, one, wombat
let g:airline_theme='powerlineish'

"===============================================================================
" NERDTree
"===============================================================================

" Open a NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree

" Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" Exit NERDTree if there is only one window opened in vim
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Show hidden files
let NETDTreeShowHidden=1

" Open/close NERDTree by <Enter>
:nnoremap <Enter> :NERDTreeToggle<CR><C-w><C-w> 

"===============================================================================
" JavaComplete2
"===============================================================================
" Required
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" Disable default mappings
let g:JavaComplete_EnableDefaultMappings = 0


"===============================================================================
" vim-codefmt Autoformatting
"===============================================================================
augroup autoformat_settings
  "autocmd FileType bzl AutoFormatBuffer buildifier
  "autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  "autocmd FileType dart AutoFormatBuffer dartfmt
  "autocmd FileType go AutoFormatBuffer gofmt
  "autocmd FileType gn AutoFormatBuffer gn
  "autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
  "autocmd FileType vue AutoFormatBuffer prettier
augroup END

"===============================================================================
" jedi Python autocompete
"===============================================================================
" Load rope plugin
let g:pymode_rope = 0


"===============================================================================
" Pyhton Syntax
"===============================================================================
let python_highlight_all = 1
