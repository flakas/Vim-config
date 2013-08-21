set title
set ruler
set number
set scrolloff=3
set backspace=indent,eol,start

"Set tabstop width
set shiftwidth=4
set tabstop=4
set softtabstop=4

"Tabs to spaces
set expandtab

"Use case-smart searching
set ignorecase
set smartcase

"Highlight search terms
set hlsearch
set incsearch  "Dynamically as you type

" Things to remember
set history=256

" Disable backups
set nowritebackup
set nobackup

set hidden " The current buffer can be put to the background without writing to disk
set wildmenu
set wildmode=longest:list:full " At command line, complete longest common string, then list alternatives.
set autoindent
set showmatch " Show matching brackets
set novisualbell
set noerrorbells
set enc=utf-8

" Sane search
nnoremap / /\v
vnoremap / /\v

" List invisible characters
set list
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<


"Set leader to comma (,)
let mapleader=","

" Control+S and Control+Q are flow-control characters: disable them in your
" terminal settings.
" $ stty -ixon -ixoff
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" sane movement with wrap turned on
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Disable swap files
set noswapfile

set cc=80 " Display 80 column marker

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Required!
Bundle 'gmarik/vundle'
" Additional plugins

" Colors
Bundle 'altercation/vim-colors-solarized'
set t_Co=256
color solarized
set background=dark
set guifont=Monospace\ 11
syntax on

Bundle 'kien/rainbow_parentheses.vim'
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'wincent/Command-T'
Bundle 'msanders/snipmate.vim'
Bundle 'Valloric/YouCompleteMe'

Bundle 'scrooloose/syntastic'
" Check syntax with syntastic
nnoremap <silent> <Leader>s :SyntasticCheck<CR>

Bundle 'scrooloose/nerdcommenter'

Bundle 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>

Bundle 'bling/vim-airline'
"Always display statusline
set laststatus=2

"Notify about trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace '\s\+$'

Bundle 'Yggdroot/indentLine'
let g:indentLine_char = '¦'

Bundle 'kana/vim-smartinput'

filetype plugin indent on " required

set showcmd " Show partial commands
set modeline " Enable file modelines
