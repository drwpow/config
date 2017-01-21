" Use vim settings, rather than vi settings (much better!)
" This must be first, because it changes other options as a side effect.
set nocompatible

filetype plugin indent on

" Config
set backspace=indent,eol,start
set clipboard=unnamed           " Paste to/from global clipboard
set colorcolumn=80
set cursorline
set expandtab                   " die you stupid tabs
set foldcolumn=1                " fixes weird indent/paint bug
set hidden                      " show unnecessary whitespace chars
set history=1000                " remember more commands and search history
set ignorecase                  " case-insensitive search
set incsearch                   " show search matches as you type
set laststatus=2                " always show status bar
set lazyredraw                  " don’t update display when executing macros
set list listchars=tab:»\ ,trail:·" expose evil tabs and trailing whitespace
set mousehide                   " hide mouse while typing
set nobackup                    " no backup files; it's 70's style cluttering
set noerrorbells                " no really, don’t beep
set nomodeline                  " disable mode lines (security measure)
set noswapfile                  " do not write annoying intermediate swap files,
set nowb
set nowrap                      " don’t wrap lines
set number                      " show line numebers
set numberwidth=5
set ruler                       " show ruler
set scrolljump=5                " reduce redraws by scrolling 5 lines at a time
set scrolloff=0                 " don't scroll until you hit the top/bottom of the screen
set shiftround                  " use multiple of shiftwidth for `<` and `>`
set shiftwidth=2                " number of spaces to use for autoindenting
set showmatch                   " set show matching parentheses
set showmode                    " always show what mode we’re currently editing in
set smartcase                   " IDK some search thing
set splitbelow                  " open top to bottom (natural)
set splitright                  " open left to right (natural)
set softtabstop=2
set tabstop=2
set undolevels=1000             " use many muchos levels of undo
set visualbell                  " don’t beep
if exists("&undofile")
  set undofile                  " keep a persistent undo file
  set undodir=~/.vim/tmp/undo//,~/tmp//,/tmp//
endif

" Vim Plug
call plug#begin('~/.vim/plugged')

" Ack
Plug 'mileszs/ack.vim', { 'on': 'Ack' }

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" CtrlP
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }

" Color Schemes
Plug 'flazz/vim-colorschemes'

" Easy Align
Plug 'junegunn/vim-easy-align'

" Handlebars
Plug 'mustache/vim-mustache-handlebars'

" NERD Commenter
Plug 'scrooloose/nerdcommenter'

" NERDTree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Surround
Plug 'tpope/vim-surround'

" Syntastic
Plug 'vim-syntastic/syntastic'
Plug 'mtscout6/syntastic-local-eslint.vim'

" Vue
Plug 'BenoitZugmeyer/eslint-plugin-html'
Plug 'posva/vim-vue'

call plug#end()

" Plugin Config

" Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'   " Run Silver Searcher as Ack
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = "ag %s -i --nocolor --nogroup --ignore '.git' --ignore '.DS_Store' --ignore 'bower_components' --ignore 'node_modules' --hidden -g ''"
endif

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='light'

" NERDTree
let NERDTreeHighlightCursorline = 1
let NERDTreeMouseMode = 2      " Allow mouse
let NERDTreeQuitOnOpen = 1
let NERDTreeShowFiles = 1
let NERDTreeShowHidden = 1        " NERDTree show hidden by default
let NERDTreeShowHidden = 1

" Key Commands
let mapleader = "\<Space>"       " Remap Leader to Space
nnoremap <Leader>a :noh<CR>      " Kill Highlight
nnoremap <Leader>g :gqq<CR>      " Align
nnoremap <Leader>q :bd<CR>       " Close current buffer
nnoremap <Leader>w :w<CR>        " Write
nnoremap <Leader>x :x<CR>        " Write + Quit
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR> " Use K to search for word under cursor
vnoremap <F5> :sort<CR>          " Sublime-style sort
nnoremap <C-E> :e#<CR>           " Switch between last edited buffer
nnoremap <C-h> <C-w>h            " Easier split movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-p> :CtrlP<CR>        " Dupe of existing shortcut; needed for Vim Plug perf
map <C-\> :NERDTreeToggle<CR>    " Ctrl + \ shortcut for NERDTree

" Syntax
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint', 'jshint']

"let g:syntastic_error_symbol = '❌'       " Unicode is dope but Hyper chokes
"let g:syntastic_style_error_symbol = '⁉️'
"let g:syntastic_warning_symbol = '⚠️'
"let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" Theme
set background=light
syntax on
highlight LineNr ctermfg=lightGrey
