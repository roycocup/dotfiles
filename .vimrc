set number
set paste
set noerrorbells
set novisualbell
set t_vb=
set tabstop=4       " A tab character looks like 2 spaces
set shiftwidth=4    " Indent levels use 2 spaces
" set expandtab       " Convert tabs to spaces
set softtabstop=4   " Pressing Tab feels like 2 spaces

let mapleader = ","

set path+=**
set wildmenu

nnoremap <leader>q :Explore<CR>
nnoremap <leader>. :tabnew<CR>


" FZF SEARCH
" sudo apt install fzf ripgrep 
" git clone --depth 1 https://github.com/junegunn/fzf.git 
" git clone --depth 1 https://github.com/junegunn/fzf.vim
" --- fzf defaults: show hidden files, ignore .git ---
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!.git"'
endif

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
