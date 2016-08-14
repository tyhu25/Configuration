set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
		
Plugin 'scrooloose/nerdtree'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'FelikZ/ctrlp-py-matcher'

Plugin 'flazz/vim-colorschemes'

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

autocmd VimEnter * NERDTree

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden 
	\ --ignore .git
	\ --ignore .svn
	\ --ignore .hg
	\ --ignore .DS_Store
	\ --ignore "**/*.pyc"
	\ --ignore review
	\ -g ""'


let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set number
syntax on

colorscheme Molokai 

