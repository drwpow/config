" Pathogen
execute pathogen#infect()
filetype plugin indent on

" Theme
syntax on

" Config
set backspace=indent,eol,start
set bs=2
set colorcolumn=72
set clipboard=unnamed
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
set tabstop=2
set ttimeoutlen=1
set ttyfast
set undolevels=1000             " use many muchos levels of undo
set visualbell
if exists("&undofile")
  set undofile                  " keep a persistent undo file
  set undodir=~/.vim/tmp/undo//,~/tmp//,/tmp//
endif

" Packages
let g:airline_theme='light'
let g:airline_powerline_fonts=1
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("h")': ['<c-d>', '<c-cr>', '<c-s>'],
  \ 'AcceptSelection("v")': ['<c-k>'],
  \ 'PrtSelectMove("j")':   ['<down>'],
  \ 'PrtSelectMove("k")':   ['<up>']
  \ }

" Key Commands
let mapleader = "\<Space>"
map <C-\> :NERDTreeToggle<CR>
map <C-l> :CtrlP<CR>
map <C-u> :Ack<space>
map <C-;> :undo<cr>
let g:multi_cursor_prev_key='<C-s>'
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>
vnoremap <F5> :sort<CR>
