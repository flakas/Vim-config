set title
set ruler
set number
set scrolloff=3
set backspace=indent,eol,start

"Set tabstop width
set shiftwidth=2
set tabstop=2
set softtabstop=2

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

" Enable project-specific .vimrc files
set exrc

" Disable swap files
set noswapfile

set cc=80 " Display 80 column marker

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" Required!
Plugin 'VundleVim/Vundle.vim'
" Additional plugins

" Colors
Plugin 'altercation/vim-colors-solarized'
set t_Co=256
color solarized
set background=light
set guifont=Monospace\ 11
syntax on

Plugin 'kien/rainbow_parentheses.vim'
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'wincent/Command-T'

Plugin 'scrooloose/nerdcommenter'

Plugin 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>

Plugin 'bling/vim-airline'
"Always display statusline
set laststatus=2

"Notify about trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace '\s\+$'

" Testing driving new plugins
Plugin 'bkad/CamelCaseMotion'
call camelcasemotion#CreateMotionMappings('<leader>')

Plugin 'Lokaltog/vim-easymotion'

" Testing end

filetype plugin indent on " required

set showcmd " Show partial commands
set modeline " Enable file modelines

" Disable unsafe commands in custom .vimrc files
"set secure

" Custom project commands
" For MP3 PHP projects
" Run current unit test file
map <Leader>u :!./do t:u --file=%
