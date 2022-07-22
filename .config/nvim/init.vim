call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'windwp/nvim-autopairs'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/nvim-cmp'

call plug#end()

highlight Normal ctermbg=000000CC
highlight NonText ctermbg=000000CC

let mapleader = ","
let g:rnvimr_enable_ex = 1

let g:rnvimr_enable_picker = 1
" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
tnoremap <silent> <M-i> <C-\><C-n>:RnvimrResize<CR>
nnoremap <leader>r <cmd>:RnvimrToggle<CR>
tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>
lua << EOF

EOF
