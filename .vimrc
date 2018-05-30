set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" Indent fold assistant
Plugin 'tmhedberg/SimpylFold'

" Git command wrapper
Plugin 'tpope/vim-fugitive'

" Syntax Highlighting Assistants
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'

" Filetree
Plugin 'scrooloose/nerdtree'

" Colschemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" TMUX-aware panel switching
Plugin 'christoomey/vim-tmux-navigator'

" More imformation in status-line
Plugin 'Lokaltog/powerline'

" Rust Language configuration
Plugin 'rust-lang/rust.vim'

" Vim-tmux command line interaction
Plugin 'benmills/vimux'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on    " required

" Automatically load plugins and collapse PluginInstall frame at startup
autocmd vimenter * PluginInstall
autocmd vimenter * q

" Allow PowerLine to use fancy symbols
let g:Powerline_symbols = 'fancy'

" Ensure that frame-splits are handled in a perdictable way
set splitbelow
set splitright

" Parencetera matching
set showmatch
set mat=2

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

set encoding=utf-8

" Turn on Syntax Highlighting
let python_highlight_all=1
syntax on

" Turn on Line Numbering
set nu

" Colorscheme control
set t_Co=256
if has('gui_running')
    set background=dark
    colorscheme solarized
else
    set background=dark
    colorscheme solarized
endif

" Allow advanced mouse controls
set mouse=a

" Spaces on tab key
set tabstop=4
set expandtab
set shiftwidth=4


"Autostart Filetree, autoquit if only filetree left
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
