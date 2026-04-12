require("config.options")

vim.api.nvim_set_hl(0, "FloatBorder", { fg = "White", ctermfg = "white" })

local function set_border_hl()
  vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#ffffff", ctermfg = "White" })
end
set_border_hl()
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = set_border_hl,
})
vim.api.nvim_create_autocmd({ "InsertLeave", "FocusLost", "TextChanged" }, {
  pattern = "*",
  callback = function()
    vim.cmd("silent! write")
  end,
})

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
require("config.lsp")
require("config.keymaps")
