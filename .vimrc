" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

" Initialize plugin system
call plug#end()

" ----NERDTree----
noremap <C-S-o> :NERDTree /home/fsuzacq/
noremap <C-t> :NERDTreeToggle<cr>

" Ignore some files
let NERDTreeIgnore = ['\.pyc$']

" ----Windows movement----
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" ----SWP dir----
set directory^=$HOME/.vim/tmp//

" ======= FZF =============
nnoremap <C-b> :Buffers<CR>
nnoremap <C-f> :GGrep<CR>
nnoremap <C-g>a :Ag<CR>
nnoremap <C-g>c :Commands<CR>
nnoremap <C-g>h :History:<CR>
nnoremap <C-g>f :BLines<CR>
nnoremap <C-g>l :BLines<CR>
nnoremap <C-g>g :GFiles<CR>
nnoremap <C-p> :Files<CR>

" ----Manage tabs----
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" ---- ALE ----
" let g:ale_sign_error = '💣'
" let g:ale_sign_warning = '⚠'

highlight clear ALEErrorSign
highlight clear ALEWarningSign

vnoremap Y "+y
nnoremap <Space> :

" Enable mouse support
set mouse=a
