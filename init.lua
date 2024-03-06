--bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#333333" })
vim.api.nvim_set_hl(0, "CursorLineNr", {
  bold = true,
  italic = true,
  fg = "darkorange",
  bg = "#777777",
})
