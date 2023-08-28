return {
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
}
