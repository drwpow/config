" Pathogen
execute pathogen#infect()
filetype plugin indent on

" Theme
syntax on

" Config
set backspace=indent,eol,start
set bs=2
set colorcolumn=72
set clipboard=unnamed           " copy/paste to/from global clipboard
set cursorline
set expandtab
set fillchars+=vert:\
set foldcolumn=1
set hidden
set history=1000                " remember more commands and search history
set hlsearch
set ignorecase
set laststatus=2
set linebreak
set list listchars=tab:»\ ,trail:·
set mousehide
set nobackup                    " no backup files; it's 70's style cluttering
set noesckeys
set noshowmode
set noswapfile                  " do not write annoying intermediate swap files,
set nowb
set nowrap
set number
set ruler
set scrolloff=4
set shiftwidth=2
set showmatch
set smartcase
set smarttab
set softtabstop=2
set splitbelow                  " Split top-to-bottom
set splitright                  " Split left-to-right
set tabstop=2
set ttimeoutlen=1
set ttyfast
set undolevels=1000             " use many muchos levels of undo
set visualbell
if exists("&undofile")
  set undofile                  " keep a persistent undo file
  set undodir=~/.vim/tmp/undo//,~/tmp//,/tmp//
endif

" Plugins
let g:airline_theme = 'light'      " Set Airline theme
let g:airline_powerline_fonts = 1  " Use hacked fonts
let g:ctrlp_show_hidden = 1        " CtrlP show hidden files (unless ignored)
let g:ctrlp_dotfiles = 1           " CtrlP show dotfiles (unless ignored)
let g:ackprg = 'ag --nogroup --nocolor --column' " Run Silver Searcher as Ack (bug)
let g:ctrlp_user_command = 'ag %s -l --nogroup --nocolor -g ""'
let g:ctrlp_use_caching = 0        " Disabled cache because Silver Searcher
let NERDTreeShowHidden = 1         " NERDTree show hidden by default

" Key Commands
let mapleader = "\<Space>"       " Remap Leader to Space
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>
vnoremap <F5> :sort<CR>          " Sublime-style sort
nnoremap <C-e> :e#<CR>           " Switch between last edited buffer
nnoremap <C-v> :bnext<CR>        " Next Buffer
nnoremap <C-h> <C-w><C-h>        " Move left split
nnoremap <C-j> <C-w><C-j>        " Move down split
nnoremap <C-k> <C-w><C-k>        " Move up split
nnoremap <C-l> <C-w><C-l>        " Move right split
nnoremap <C-q> :bd<CR>           " Close current buffer

map <C-u> :Ack<space>
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("h")': ['<c-d>', '<c-cr>', '<c-s>'],
  \ 'AcceptSelection("v")': ['<c-k>'],
  \ 'PrtSelectMove("j")':   ['<down>'],
  \ 'PrtSelectMove("k")':   ['<up>']
  \ }
let g:multi_cursor_prev_key='<C-s>'
map <C-\> :NERDTreeToggle<CR>    " Ctrl + \ shortcut for NERDTree
nnoremap <Leader>o :CtrlP<CR>    " Leader + o shortcut for open

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
let g:syntastic_vue_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
