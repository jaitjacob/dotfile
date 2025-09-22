return {
  "neovim/nvim-lspconfig",
  event = "LazyFile",
  dependencies = {
    "mason.nvim",
    "mason-lspconfig.nvim",
  },
  opts = {
    -- options for vim.diagnostic.config()
    diagnostics = {
      underline = true,
      update_in_insert = false,
      virtual_text = {
        spacing = 4,
        source = "if_many",
        prefix = "●",
      },
      severity_sort = true,
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = LazyVim.config.icons.diagnostics.Error,
          [vim.diagnostic.severity.WARN] = LazyVim.config.icons.diagnostics.Warn,
          [vim.diagnostic.severity.HINT] = LazyVim.config.icons.diagnostics.Hint,
          [vim.diagnostic.severity.INFO] = LazyVim.config.icons.diagnostics.Info,
        },
      },
    },
    -- Enable this to enable the builtin LSP inlay hints on Neovim >= 0.10.0
    inlay_hints = {
      enabled = true,
      exclude = { "vue" },
    },
    -- Enable this to enable the builtin LSP code lenses on Neovim >= 0.10.0
    codelens = {
      enabled = false,
    },
    -- add any global capabilities here
    capabilities = {
      workspace = {
        fileOperations = {
          didRename = true,
          willRename = true,
        },
      },
    },
    -- options for vim.lsp.buf.format
    format = {
      formatting_options = nil,
      timeout_ms = nil,
    },
    -- The following is the new setup
    servers = {
      lua_ls = {},
      gopls = {},
      vtsls = {},
      pyright = {},
      clangd = {},
    },
  },
}