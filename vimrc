set nocompatible

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"-------------------------------- Baseline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{1

""" General {{{2
set encoding=utf-8
set t_Co=256
set nowrap
set mouse=a
let &colorcolumn=join(range(81,121),",")
filetype plugin indent on
syntax on
" }}}2

""" Tabs and Indentantion {{{2
set expandtab    " use spaces instead of tab
set tabstop=2    " set tab to 2 spaces
set autoindent   " copy indent from the current line to the new line
set copyindent   " copy indent characters from the current line to the new line
set shiftwidth=2 " use 2 spaces when autoindenting
set smarttab     " use shiftwidth when inserting on the start of the line
set backspace=2  " backspace over autoindent, eol and start of insert
" }}}2

""" Display and Highlight {{{2
set title           " change terminal title
set number          " display line numbers
set showcmd         " displays the commands you type
set cursorline      " underline the current line
set showmatch       " show matching parenthesis
set listchars=tab:»·,trail:.,extends:#,nbsp:.
set list            " display whitespace and other listchars
set scrolloff=1     " set minimal lines to keep above or below cursor
set sidescrolloff=5 " set minimal lines to the right side of the cursor
set laststatus=2    " always display status line
" }}}2

""" Search and Command-line {{{2
set ignorecase " ignore case when searching
set smartcase  " ignore case if pattern is lowercase
set hlsearch   " highlight search results
set incsearch  " show matches per character
set wildmenu   " display possible matches for command-line comletion
" }}}2

""" History and Backups {{{2
set autoread        " reload if file changed outside Vim
set nobackup        " don't keep backup files
set noswapfile      " don't keep swap files
set history=1000    " increase command and search history
set undolevels=1000 " increase undo levels
set undofile        " keep and store undo file in first available location
set undodir=~/.vim/.undo,~/tmp,/tmp
" }}}2

""" Windows and Buffers {{{2
set hidden     " hide buffer instead of closing it
set splitbelow " split below when using :sp
set splitright " split to the right when using :vs
" }}}2

""" Folds {{{2
set foldenable        " enable folds
set foldlevel=99      " all unfolded at start
set foldcolumn=1      " display side column with folds
set foldmethod=marker " fold only when provided markers such 3x{
set foldopen=search   " auto-unfold under listed conditions
" }}}2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}1
"-------------------------------- Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{1

""" Normal mode {{{2

" map leader to space and switch : and ;
let mapleader = " "
nnoremap ; :
nnoremap : ;

" quick edit and quick reload of .vimrc
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>

"insert new line below without going into INSERT
nnoremap <CR> o<Esc>

"clear highlight after search
nnoremap <silent> <leader>/ :noh<CR><Esc>

" better window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" toggle spellcheck
nnoremap <silent> <leader>S :setlocal spell! spelllang=en_us<CR>

" call script to swap ESC and CAPS
nnoremap <silent> <leader>E :!escswap<CR><CR>
" }}}2

""" Insert mode {{{2

" type jj to return to NORMAL from INSERT
inoremap jj <Esc>
" }}}2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}1
"-------------------------------- Autocomands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{1
if has("autocmd")
  augroup Ruby "{{{2
    autocmd!
    autocmd Filetype ruby setlocal foldmethod=syntax
  augroup END " }}}2

  augroup git "{{{2
    autocmd!
    autocmd Filetype gitcommit setlocal colorcolumn=72
  augroup END " }}}2

  augroup Misc_Global "{{{2
    autocmd!
    autocmd Filetype ruby,markdown,gitcommit setlocal spell spelllang=en_us
    autocmd BufNewFile,BufReadPost *.md set filetype=markdown
    autocmd BufRead TODO setlocal syntax=abel
  augroup END " }}}2
endif " has("autocmd")

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}1
"-------------------------------- Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""{{{1

" include plugin manager config
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" include local config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""}}}1
