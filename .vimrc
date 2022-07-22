autocmd BufEnter * lcd %:p:h
filetype on
syntax on
" VIM-PLUGIN SECTION {{{
call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'dahu/Vimazing'
Plug 'ryanoasis/vim-devicons'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'gosukiwi/vim-atom-dark'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()
" }}}

" FZF SECTION {{{
let g:fzf_preview_window = 'right:50%'
let g:fzf_layout = { 'window': { 'width': 0.6, 'height': 0.6  }  }
" }}}

highlight Normal ctermbg=000000CC
highlight NonText ctermbg=000000CC

"
" NOREMAP SECTION {{{
nnoremap <SPACE> <Nop>
map <Space> <Leader>
nnoremap <C-s> :w<CR>
nnoremap <Leader>o :Files %:p:h<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <Leader>t :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" }}}

" Airline Setup {{{
  let g:airline_powerline_fonts = 1
  let g:airline_theme='wombat'
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#show_splits = 1
  let g:airline#extensions#tabline#show_buffers = 1
  let g:airline#extensions#tabline#tab_nr_type = 1
  let g:airline#extensions#tabline#formatter = 'unique_tail'
  let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
  let g:airline_powerline_fonts = 1
" }}}

set t_Co=256
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
let python_highlight_all = 1

set path+=~/project/**
set nocompatible
set number
set relativenumber
set autoindent
set cursorline
set cursorcolumn

set shiftwidth=4

set tabstop=4

set expandtab

set nobackup

set scrolloff=1

set incsearch

set ignorecase

set smartcase

set showcmd

set showmode

set showmatch

set hlsearch

set history=1000

set wildmenu

set timeoutlen=500
set wildmode=longest,full,full

set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
nnoremap <SPACE> <Nop>
map <Space> <Leader>
set laststatus=2  " always display the status line
set statusline=%<%f\ %h%m%r\ %P
