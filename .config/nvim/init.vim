let mapleader =","

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot' "syntax highlighting"
Plug 'mattn/emmet-vim'
Plug 'leafgarland/typescript-vim'
Plug 'Valloric/MatchTagAlways'
" ^ MatchTagAlways requires `pip install neovim` which requires `apk add py-pip python3-dev`
call plug#end()

" Install xclip with your package manager to have clipbaord acces with "+y

" Javascript tab settings
	set tabstop=2 shiftwidth=2 expandtab smarttab

" Some basics:
	nnoremap c "_c
	set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber
" Enable autocompletion:
	set wildmode=longest,list,full
" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_us<CR>
	set splitbelow splitright

" Check file in shellcheck:
	map <leader>s :!clear && shellcheck %<CR>
" Automatically deletes all trailing whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e
