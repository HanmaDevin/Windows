return {

  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        "lua_ls",
        "bashls",
        "clangd",
        "cssls",
        "dockerls",
        "jdtls",
        "html",
        "eslint",
        "remark_ls",
        "powershell_es",
        "spectral",
        "grammarly",
        "lemminx",
        "pyright",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.bashls.setup({ capabilities = capabilities })
      lspconfig.clangd.setup({ capabilities = capabilities })
      lspconfig.cssls.setup({ capabilities = capabilities })
      lspconfig.dockerls.setup({ capabilities = capabilities })
      lspconfig.jdtls.setup({ capabilities = capabilities })
      lspconfig.html.setup({ capabilities = capabilities })
      lspconfig.eslint.setup({ capabilities = capabilities })
      lspconfig.remark_ls.setup({ capabilities = capabilities })
      lspconfig.powershell_es.setup({ capabilities = capabilities })
      lspconfig.spectral.setup({ capabilities = capabilities })
      lspconfig.grammarly.setup({ capabilities = capabilities })
      lspconfig.lemminx.setup({ capabilities = capabilities })
      lspconfig.pyright.setup({ capabilities = capabilities })

      vim.keymap.set("n", "<K>", vim.lsp.buf.hover, {desc = "Show hover information"})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {desc = "Go to definition"})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {desc = "Code action"})
    end,
  },
}
