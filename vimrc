" ==== VIM INTERNAL SETTINGS ====
" line status
set number
set signcolumn=number

" Misc
set mouse=a
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
" ==== VIM BUNDLE SETTINGS END ====

