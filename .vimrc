set encoding=utf-8
set nocompatible
set backspace=indent,eol,start
filetype plugin on

if has('python3')
endif

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'psliwka/vim-smoothie'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'doums/darcula'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'

call plug#end()


set number
set relativenumber
set autoindent

"colorscheme molokai
"let g:molokai_original = 1

colorscheme darcula

set background=dark

if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar

set shortmess-=S

map <F3> :NERDTreeToggle<CR>
map <c-p> :FZF<CR>
map <c-k> :YcmCompleter Format<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'
set nowrap
set incsearch
set hlsearch

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

"This allows for change paste motion cp{motion}
nmap <silent> cp :set opfunc=ChangePaste<CR>g@
function! ChangePaste(type, ...)
    silent exe "normal! `[v`]\"_c"
    silent exe "normal! p"
endfunction
