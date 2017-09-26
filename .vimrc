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
set softtabstop=2
set splitbelow                  " open top to bottom (natural)
set splitright                  " open left to right (natural)
set tabstop=2
set undolevels=1000             " use many muchos levels of undo
set visualbell                  " don’t beep
set wildignore+=*/.git/*,*/tmp/*,*/node_modules/*,*.swp " ignore some files
if exists("&undofile")
  set undofile                  " keep a persistent undo file
  set undodir=~/.vim/tmp/undo//,~/tmp//,/tmp//
endif
au BufWritePost * :silent! :syntax sync fromstart<cr>:redraw!<cr> "Auto-repaint

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

" Emmett
Plug 'mattn/emmet-vim'

" Handlebars
Plug 'mustache/vim-mustache-handlebars'

" NERD Commenter
Plug 'scrooloose/nerdcommenter'

" Surround
Plug 'tpope/vim-surround'

" Syntastic
Plug 'vim-syntastic/syntastic'

" Vue
Plug 'BenoitZugmeyer/eslint-plugin-html'
Plug 'posva/vim-vue'
Plug 'sekel/vim-vue-syntastic'

call plug#end()

" Plugin Config

" Ack
if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
endif

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='light'

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

" Syntax
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_handlebars_checkers = ['vim-mustache-handlebars']
let g:syntastic_javascript_checkers = ['eslint', 'jshint']
let g:syntastic_loc_list_height = 5
let g:syntastic_vue_checkers = ['eslint']

let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
if matchstr(local_eslint, "^\/\\w") == ''
    let local_eslint = getcwd() . "/" . local_eslint
endif
if executable(local_eslint)
    let g:syntastic_javascript_eslint_exec = local_eslint
    let g:syntastic_vue_eslint_exec = local_eslint
endif

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

" Git
autocmd Filetype gitcommit setlocal spell textwidth=72
