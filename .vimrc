"Turn on pathogen
call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

"Enable buffer switching without writing to disc
set hidden

"This needs a longer history!
set history=1000

"Enable wildmenu
set wildmenu
set wildmode=list:longest:full

"Use case-smart searching
set ignorecase
set smartcase

"Set terminal title
set title

set scrolloff=3

"Line numbers
set ruler

"Intuitive backspacing
set backspace=indent,eol,start

syntax on
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

"Highlight search terms
set hlsearch
set incsearch  "Dynamically as you type

set visualbell "No more damn bell!

set autoindent
set cmdheight=2 "CMD line 2 rows high
set nu "Display line numbers on the left side

"Show matching braces
set showmatch

"Set tabstop width
set shiftwidth=4
set tabstop=4
set softtabstop=4
"Tabs to spaces
set expandtab

"Select when using mouse
set selectmode=mouse

set nobackup
set nowritebackup

"Show (partial) commands
set showcmd

"Show tab characters and visual whitespace
set list
set listchars=tab:>.

"Set magic on for regex
set magic


set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"Solarized theme, dark background
color solarized
set background=dark

set foldclose=all
set foldmethod=marker
set enc=utf-8
set lazyredraw

"set spellchecking
set spell

"Highlight current line
set cursorline

"Display current mode
set showmode

"Enable folding
set foldenable

set guifont=

"Bind F2 key to toggle NERDTree
map <F2> :NERDTreeToggle<CR>
