set nocompatible              " be iMproved, required
set noswapfile

" Highlight current line.
hi CursorLine cterm=NONE ctermbg=darkgrey guibg=darkred guifg=white
set cursorline

" Constrain columns.
"set textwidth=80
set textwidth=120
set colorcolumn=+1
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Center current line.
" http://vim.wikia.com/wiki/Keep_your_cursor_centered_vertically_on_the_screen
set scrolloff=999

" Ignore files
set wildignore+=*/target/*
set wildignore+=*/node_modules/*
set wildignore+=*/vendor/*
set wildignore+=*/tmp/*
set wildignore+=*/.git/*

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'slim-template/vim-slim.git'
Plugin 'rust-lang/rust.vim'
Plugin 'elixir-editors/vim-elixir'
"Plugin 'dense-analysis/ale'
"Plugin 'Yggdroot/indentLine'

let g:ale_fixers = { 'elixir': ['mix_format'] }

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Bundle 'chase/vim-ansible-yaml'

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

autocmd Filetype gitcommit setlocal textwidth=72
set number
set runtimepath^=~/.vim/bundle/ctrlp.vim
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

filetype plugin on                  " required
syntax on

" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
au BufNewFile,BufRead Jenkinsfile setf groovy
