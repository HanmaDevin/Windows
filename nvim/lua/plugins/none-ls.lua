return {
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
        },
      })

      vim.keymap.set("n", "<M-f>", vim.lsp.buf.format, {desc = "Format"})
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    config = function()
      require("mason-null-ls").setup({
        ensure_installed = {
          "blackd-client",
          "stylua",
          "google-java-format",
          "prettier",
          "ast-grep",
        },
        methods = {
          diagnostics = true,
          formatting = true,
          code_actions = true,
          completion = true,
          hover = true,
        },

        automatic_installation = true,
        handlers = nil,
      })
    end,
  },
}
