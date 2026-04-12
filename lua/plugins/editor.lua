return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        renderer = {
          indent_markers = {
            enable = true,
            inline_arrows = true,
            icons = {
              corner = "└ ",
              edge = "│ ",
              item = "│ ",
              bottom = "─ ",
              none = "  ",
            },
          },
        },
        view = {
          number = true,
          relativenumber = true,
        },
        on_attach = function(bufnr)
          local api = require("nvim-tree.api")
          local opts = { buffer = bufnr, noremap = true, silent = true }
          api.config.mappings.default_on_attach(bufnr)
          vim.keymap.set("n", "v", api.node.open.vertical, opts)
          vim.keymap.set("n", "s", api.node.open.horizontal, opts)
        end,
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },  -- remove lazy = false, load on file open
    config = function()
      require("nvim-treesitter.config").setup({
        ensure_installed = {
          "lua", "rust", "toml",
          "javascript", "typescript", "tsx",
        },
        auto_install = true,   -- auto install missing parsers
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
  { 
    "nvim-telescope/telescope.nvim", 
    dependencies = { "nvim-lua/plenary.nvim" } 
  },
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = "▎" },
          change = { text = "▎" },
          delete = { text = "" },
          topdelete = { text = "" },
          changedelete = { text = "▎" },
          untracked = { text = "▎" },
        },
        current_line_blame = false,
        current_line_blame_opts = {
          delay = 0,
          virt_text_pos = "eol",
        },
      })
    end,
  },
}