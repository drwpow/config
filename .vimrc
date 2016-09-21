" Pathogen
execute pathogen#infect()
filetype plugin indent on

" Theme
syntax on

" Config
set backspace=indent,eol,start
set bs=2
set colorcolumn=72
set cursorline
set expandtab
set fillchars+=vert:\
set foldcolumn=1
set hidden
set history=1000
set hlsearch
set ignorecase
set laststatus=2
set linebreak
set list listchars=tab:»\ ,trail:·
set mousehide
set nobackup
set noesckeys
set noshowmode
set noswapfile
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
set visualbell

" Packages
let g:airline_theme='light'
let g:airline_powerline_fonts=1
if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column'
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|bower_components|node_modules|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
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
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>
