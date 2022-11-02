local opt = vim.opt
-- line nubmers
opt.number = true
opt.relativenumber = true
-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
-- search settings
opt.ignorecase = true
opt.smartcase = true
-- cursor line
opt.cursorline = true
opt.cursorcolumn = true
-- clipboard
opt.clipboard:append("unnamedplus")
-- split windows
opt.splitright = true
opt.splitbelow = true
-- you name it
opt.iskeyword:append("-")
-- set leaderkey timeout
opt.timeoutlen = 1500
--vim.cmd([[colorscheme gruvbox]])
opt.termguicolors = true
opt.background = "dark"
vim.opt.laststatus = 3
vim.highlight.create('WinSeparator', {ctermbg=0, guibg=none}, false)
vim.lsp.set_log_level("debug")
vim.o.showbreak = '↪'
vim.o.list = true 
--vim.opt.listchars = { space = '_', tab = '‣', trail='•', precedes='«', extends='»', eol='⏎', nbsp='⏎'}
--vim.opt.listchars = { space = '⏎', tab = '‣' }
vim.opt.listchars = { space = '_', tab = '‣ ', nbsp ="+", trail='•' }
vim.opt.listchars:append({ extends = "»" })
vim.opt.listchars:append({ precedes = "«" })
vim.opt.listchars:append({ eol = "⏎" })
vim.opt.listchars:append({ space = "_" })
vim.api.nvim_set_option("clipboard","unnamed")
vim.o.compatible = false
vim.o.swapfile = false
vim.o.incsearch = true
vim.o.hlsearch = false
vim.o.expandtab = true
vim.o.hidden = true
vim.o.wildmenu = true
vim.o.timeoutlen = 500
vim.o.wildmode = "longest,full,full"
