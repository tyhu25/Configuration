set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/vundle'

" my Bundle here:
"
Plugin 'taglist.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:nerdtree_tabs_open_on_console_startup = 0
let g:nerdtree_tabs_focus_on_files = 1

set go= 
"设置配色，这里选择的是desert，也有其他方案，在vim中输入:color 在敲tab键可以查看 
color desert 
"设置背景色，每种配色有两种方案，一个light、一个dark 
set background=light 
"打开语法高亮 
syntax on 
"显示行号 
set number 
"设置缩进有三个取值cindent(c风格)、smartindent(智能模式，其实不觉得有什么智能)、autoindent(简单的与上一行保持一致) 
set cindent 
"在windows版本中vim的退格键模式默认与vi兼容，与我们的使用习惯不太符合，下边这条可以改过来 
set backspace=indent,eol,start 
"用空格键替换制表符 
:set expandtab 
"制表符占4个空格 
set tabstop=3 
"默认缩进4个空格大小 
set shiftwidth=3 
"增量式搜索 
set incsearch 
"高亮搜索 
set hlsearch 
"有时中文会显示乱码，用一下几条命令解决 
let &termencoding=&encoding 
set fileencodings=utf-8,gbk 
"很多插件都会要求的配置检测文件类型 
:filetype on 
:filetype plugin on 
:filetype indent on 
"下边这个很有用可以根据不同的文件类型执行不同的命令 
"例如：如果是c/c++类型 
:autocmd FileType c,cpp :set foldmethod=syntax 
:autocmd FileType c,cpp :set number 
:autocmd FileType c,cpp :set cindent 
"例如：如果是python类型 
:autocmd FileType python :set number 
:autocmd FileType python :set foldmethod=syntax 
:autocmd FileType python :set smartindent
