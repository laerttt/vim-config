-- apparence
vim.opt.termguicolors = true
vim.opt.colorcolumn = "100"   
vim.opt.scrolloff = 20      -- lines above/eblow cursor
vim.opt.sidescrolloff = 20      -- lines r/l cursor
vim.opt.signcolumn = "yes"  -- always show sign column
vim.opt.wrap = false  
vim.opt.cursorline = true   -- highlight current line
vim.opt.number = true
vim.opt.relativenumber = true

-- indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true -- override ignore if uppercase
vim.opt.hlsearch = true
vim.opt.incsearch = true -- match while typing

-- performance
vim.opt.updatetime = 100
vim.opt.timeoutlen = 300
vim.opt.lazyredraw = true -- dont redraw on macro/regex

-- behavior
vim.opt.clipboard = "unnamedplus" -- system clipboard
vim.opt.completeopt = "menuone,noinsert,noselect"