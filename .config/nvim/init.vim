" --- Plugin Loader ---
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
        echo "Downloading junegunn/vim-plug to manage plugins..."
        silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload
        silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config/nvim/autoload/plug.vim}
        autocmd VimEnter * PlugInstall
endif

" --- PLUGINS ---
call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
Plug 'bling/vim-airline'
call plug#end()

" --- BASICS ---
set title
set laststatus=0
set noruler
set noshowcmd
set encoding=utf-8
set ttyfast
set nocompatible

" --- FIXES ----
" Backspace Problems
set backspace=indent,eol,start
" Plugin Loading
filetype plugin on

" --- BEHAVIOUR ---
" Specific File Settings
set modelines=0
" Automatically Wrap Text Beyond Screen
set wrap

" --- VISUALS ---
syntax on
" Highlight Matching Brackets
set matchpairs+=<:>
" Display Different Types of White Spaces
set list
set listchars=tab:>\ ,trail:*,extends:#,nbsp:.
" Show Line Numbers
set number
" Tabstop Settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
