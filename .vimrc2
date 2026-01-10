set number
set paste
set noerrorbells
set novisualbell
set t_vb=
set tabstop=4       " A tab character looks like 2 spaces
set shiftwidth=4    " Indent levels use 2 spaces
" set expandtab       " Convert tabs to spaces
set softtabstop=4   " Pressing Tab feels like 2 spaces
set clipboard=unnamedplus

let mapleader = ","

set path+=**
set wildmenu

nnoremap <leader>q :Explore<CR>
nnoremap <leader>. :tabnew<CR>


""  Vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'hashivim/vim-terraform'
Plugin 'ajmwagar/vim-deus'
call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" FZF SEARCH
" --- fzf defaults: show hidden files, ignore .git ---
" let $FZF_DEFAULT_OPTS = '--exact --layout=reverse --info=inline'
let $FZF_DEFAULT_OPTS = '--exact --info=inline'
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!.git"'
endif

" Your fast file source
"let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob \"!.git\"'
" let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!.git"'

" Better ranking for sequential / boundary / camelCase hits
" - algo=v2    : fzy-like scoring (prefers consecutive and boundary matches)
" - tiebreak   : earlier match position first, then shorter match
" - case=smart : case-insensitive unless query has uppercase
" - bind       : Ctrl-e toggles exact mode on the fly when you need it
" let $FZF_DEFAULT_OPTS='--algo=v2 --tiebreak=begin,length --case=smart --layout=reverse --info=inline --bind=ctrl-e:toggle-exact'


" Files (fuzzy file finder in current dir/project)
nnoremap <leader>f :GFiles<CR>

" Git files (only tracked/ignored-by-git-smart)
" nnoremap <leader>p :GFiles<CR>

" Text search (live grep with ripgrep)
nnoremap <leader>s :Rg<CR>

" Buffers and recent files (handy)
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>h :History<CR>

" Optional: nicer preview window
let g:fzf_preview_window = ['right:50%', 'ctrl-/']

" TODO CHECKBOXES

" Theme
set t_Co=256
set termguicolors

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark    " Setting dark mode
colorscheme deus
let g:deus_termcolors=256


