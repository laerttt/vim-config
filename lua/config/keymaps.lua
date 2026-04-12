local map = vim.keymap.set
local gs = require("gitsigns")


-- LSP
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
map("n", "<leader>f", vim.lsp.buf.format, { desc = "Format" })
map("n", "K", function() 
    vim.lsp.buf.hover({ border = "rounded" }) 
end, { desc = "Hover docs" })
map("n", "<leader>e", function()
  vim.diagnostic.open_float({ border = "rounded" })
end, { desc = "Show diagnostics" })

-- Rust
map("n", "<leader>rr", function() 
    vim.cmd.RustLsp("runnables") 
end, { desc = "Rust runnables" })
map("n", "<leader>rd", function() 
    vim.cmd.RustLsp("debuggables") 
end, { desc = "Rust debuggables" })
map("n", "<leader>re", function() 
    vim.cmd.RustLsp("expandMacro") 
end, { desc = "Expand macro" })

-- nvim-tree
map("n", "<leader>b", function()
  local view = require("nvim-tree.view")
  if view.is_visible() then
    require("nvim-tree.api").tree.close()
  else
    require("nvim-tree.api").tree.open()
  end
end, { desc = "File browser" })

-- viewing
map("n", "<leader>hp", gs.preview_hunk, { desc = "Preview hunk" })
map("n", "<leader>hb", gs.blame_line, { desc = "Blame line" })
map("n", "<leader>hd", gs.diffthis, { desc = "Diff this" })

-- toggle
map("n", "<leader>tb", gs.toggle_current_line_blame, { desc = "Toggle blame" })
map("n", "<leader>td", gs.toggle_deleted, { desc = "Toggle deleted" })