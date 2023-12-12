call plug#begin(stdpath('data') . '/plugged')

Plug 'preservim/nerdtree'

" autocomplete plugin
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'

" statusbar plugin
Plug 'vim-airline/vim-airline'

Plug 'jiangmiao/auto-pairs'

" themes
Plug 'joshdick/onedark.vim'

Plug 'junegunn/fzf.vim'

Plug 'simnalamburt/vim-mundo'

" code formatter
Plug 'sbdchd/neoformat'

call plug#end()

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" NerdTree conf
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
map ; :Files<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

" enable global clipboard
set clipboard+=unnamedplus

" enable auto complete
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" https://swordandsignals.com/2020/12/13/5-lines-in-vimrc.html
set nohlsearch    " disable highlighting of search results
set ignorecase  " do case insensitive search 
set incsearch   " show incremental search results as you type
set number      " display line number

" set theme
colorscheme onedark

" save undo trees in files
set undofile
set undodir=~/.vim/undo

" number of undo saved
set undolevels=10000 

" save as root
cmap w!! w !sudo tee > /dev/null %

