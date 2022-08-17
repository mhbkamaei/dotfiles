vim.o.background = "dark"
--vim.cmd([[colorscheme gruvbox]])
vim.opt.laststatus=3
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
vim.o.compatible = false
vim.o.swapfile = false
vim.o.ignorecase = true
vim.o.incsearch = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.hlsearch = false
vim.o.tabstop=4
vim.o.softtabstop=4
vim.o.shiftwidth=4
vim.o.expandtab = true
vim.o.cursorcolumn = true
vim.o.hidden = true
vim.o.wildmenu = true
vim.o.timeoutlen = 500
vim.o.wildmode = "longest,full,full"
vim.cmd[[colorscheme nord]]
