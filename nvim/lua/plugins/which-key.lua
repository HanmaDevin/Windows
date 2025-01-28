return {
  "folke/which-key.nvim",
  dependencies = {
    "echasnovski/mini.nvim",
  },
  config = function()
    require("which-key").setup({
      plugins = {
        marks = true,
        registers = true,
        spelling = {
          enabled = true,
        },
        presets = {
          operators = true,
          motions = true,
          text_objects = true,
          windows = true,
          nav = true,
          z = true,
          g = true,
        },
      },

      show_help = true,
    })
  end,
}
