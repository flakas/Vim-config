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
"set listchars=tab:>.,trail:~,eol:$
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<
hi NonText ctermfg=8 guifg=gray

"Set magic on for regex
set magic


set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"Solarized theme, dark background
if has("gui_running")
    color liquidcarbon
    set background=dark
endif
if !has("gui_running")
    color molokai
    set background=light
endif

set foldclose=all
set foldmethod=marker
set enc=utf-8
"set nolazyredraw

"set spellchecking
"set spell

"Highlight current line
set cursorline

"Display current mode
set showmode

"Enable folding
set foldenable

set guifont=Monospace\ 11

"Bind F2 key to toggle NERDTree
map <F2> :NERDTreeToggle<CR>

"Set leader to comma (,)
let mapleader=","

"Notify about lines longer than 80 chars
if exists("+colorcolumn")
    set cc=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

"Notify about trailing whitespace
match ErrorMsg '\s\+$'

nnoremap / /\v
vnoremap / /\v

"Always display statusline
set laststatus=2
set statusline=%F "tail of the filename"

"Modify statusline
set statusline=%f       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=[%0.50{expand('%:p:h')}] "Current Working Directory
set statusline+=%{fugitive#statusline()}\ 
set statusline+=" "
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file]"


let php_sql_query=1     " Enable SQL syntax highlighting for PHP

" sane movement with wrap turned on
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Syntastic plugin configs
let g:syntastic_mode_map = { 'mode' : 'active',
                           \ 'active_filetypes' : ['php', 'python', 'cpp', 'css', 'javascript'],
                           \ 'passive_filetypes' : [] }
let g:syntastic_check_on_open=1 " Check syntax on first load

" Tagbar key map
nmap <F3> :TagbarToggle<CR>

" Rainbow Parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
