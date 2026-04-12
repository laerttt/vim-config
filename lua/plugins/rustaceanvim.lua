return {
  {
    "mrcjkb/rustaceanvim",
    version = "^5",
    lazy = false,
    init = function()
      vim.g.rustaceanvim = {
        tools = {
          float_win_config = { border = "rounded" },
          hover_actions = {
            replace_builtin_hover = true,
          },
        },
        server = {
          settings = {
            ["rust-analyzer"] = {
              checkOnSave = true,
              check = { command = "clippy" },
              inlayHints  = { enable = true },
              cargo = { allFeatures = true },
              diagnostics = {
                enable = true,
                experimental = { enable = false },  -- disable experimental diagnostics
              },
              procMacro = { enable = true },
            },
          },
        },
      }
    end,
  },
}