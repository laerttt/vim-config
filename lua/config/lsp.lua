require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "ts_ls", "lua_ls" },
  automatic_installation = true,
})

vim.lsp.config("ts_ls", {
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
  flags = {
    debounce_text_changes = 150,
  },
})

vim.lsp.config("lua_ls", {
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
  settings = {
    Lua = {
      runtime = { version = "LuaJIT" },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      diagnostics = { globals = { "vim" } },
      telemetry = { enable = false },
    },
  },
})

vim.lsp.enable({ "ts_ls", "lua_ls" })