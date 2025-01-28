return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
      vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", {})
      vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {})
    end,
  },
  {
    "tpope/vim-fugitive",
    config = function()
      vim.keymap.set("n", "<leader>gc", ":Git commit -m ''", {})
      vim.keymap.set("n", "<leader>gp", ":Git push<CR>", {})
      vim.keymap.set("n", "<leader>gl", ":Git pull<CR>", {})
      vim.keymap.set("n", "<leader>gd", ":Git diff<CR>", {})
      vim.keymap.set("n", "<leader>ga", ":Git add", {})
      vim.keymap.set("n", "<leader>gs", ":Git status<CR>", {})
    end,
  },
}
