return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "moon",
      on_colors = function(colors)
        colors.terminal_black = "#55556e"
        colors.fg_gutter = "#55556e"
        colors.dark5 = "#c0caf5"
      end,
    },
  },
  {
    "navarasu/onedark.nvim",
    opts = {
      style = "deep", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    },
  },
}
