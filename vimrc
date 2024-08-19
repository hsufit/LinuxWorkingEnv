" from: https://vi.stackexchange.com/questions/25149/advice-to-add-set-nocompatible-as-first-line-of-vimrc
if &compatible
  " Vim defaults to `compatible` when selecting a vimrc with the command-line
  " `-u` argument. Override this.
  set nocompatible
endif

" ==== VIM INTERNAL SETTINGS ====
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

" line status
set number               " show line number
set numberwidth=5
set signcolumn=number
set cursorline           " highlight cursor line

" search
set hlsearch             " highlight search result
set incsearch            " show matched cases during typing

" Misc
set mouse=a
set showcmd              " show the key binding command before finished
set clipboard=unnamed    " unnamed match to yy in vim, unnamedplus match to C-c/C-v for other program
" ==== VIM INTERNAL SETTINGS END ====

" ==== VIM KEY MAP SETTINGS ====
" Tab control
nnoremap dir :Explore<CR>
nnoremap <C-t>n :Texplore<CR>
nnoremap <S-h> :tabprevious<CR>
nnoremap <S-l> :tabnext<CR>

" Split control
nnoremap sdir :Sexplore<CR>
nnoremap vdir :Vexplore<CR>
" ==== VIM KEY MAP SETTINGS END ====

set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" airline to sync tmux status line
Plugin 'edkolev/tmuxline.vim'

" solarized theme
Plugin 'lifepillar/vim-solarized8'

" git line edit status
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ==== VIM BUNDLE SETTINGS ====
" Theme
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline#extensions#tmuxline#enabled=1
let airline#extensions#tmuxline#snapshot_file="~/.tmux-status.conf"
set background=dark
colorscheme solarized8_high
" ==== VIM BUNDLE SETTINGS END ====

