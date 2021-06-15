set nocompatible
filetype plugin on

if has('python3')
endif

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'psliwka/vim-smoothie'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rhysd/vim-clang-format'
Plug 'doums/darcula'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'

call plug#end()


set number
set relativenumber


colorscheme molokai
let g:molokai_original = 1

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
map <c-k> :ClangFormat<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'
set incsearch

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

set hlsearch
