" Pathogen
execute pathogen#infect()
filetype plugin indent on

" Config
map , <leader>
map <Space> <leader>
set autoindent
set autoread
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
set lazyredraw
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
set relativenumber
set ruler
set scrolloff=4
set shiftwidth=2
set showmatch
set smartcase
set smartindent
set smarttab
set softtabstop=2
set tabstop=2
set ttimeout
set ttimeoutlen=1
set ttyfast
set visualbell

if has("gui_macvim")
  let macvim_hig_shift_movement = 1
  colorscheme paramount
endif

" Packages
if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column'
  set grepprg=ag\ --nogroup\ --nocolor
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
map <D-\> :NERDTreeToggle<CR>
map <C-l> :CtrlP<CR>
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

