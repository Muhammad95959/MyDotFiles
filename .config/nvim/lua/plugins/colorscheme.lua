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
        colors.comment = "#808fd9"
        colors.dark5 = "#c0caf5"
        colors.fg_gutter = "#4e5680"

        -- colors.none = "NONE"
        -- colors.bg_dark = "#1e2030"
        -- colors.bg = "#222436"
        -- colors.bg_highlight = "#2f334d"
        -- colors.terminal_black = "#444a73"
        -- colors.fg = "#c8d3f5"
        -- colors.fg_dark = "#828bb8"
        -- colors.fg_gutter = "#3b4261"
        -- colors.dark3 = "#545c7e"
        -- colors.comment = "#7a88cf"
        -- colors.dark5 = "#737aa2"
        -- colors.blue0 = "#3e68d7"
        -- colors.blue = "#82aaff"
        -- colors.cyan = "#86e1fc"
        -- colors.blue1 = "#65bcff"
        -- colors.blue2 = "#0db9d7"
        -- colors.blue5 = "#89ddff"
        -- colors.blue6 = "#b4f9f8"
        -- colors.blue7 = "#394b70"
        -- colors.purple = "#fca7ea"
        -- colors.magenta2 = "#ff007c"
        -- colors.magenta = "#c099ff"
        -- colors.orange = "#ff966c"
        -- colors.yellow = "#ffc777"
        -- colors.green = "#c3e88d"
        -- colors.green1 = "#4fd6be"
        -- colors.green2 = "#41a6b5"
        -- colors.teal = "#4fd6be"
        -- colors.red = "#ff757f"
        -- colors.red1 = "#c53b53"
      end,
    },
  },
  {
    "catppuccin/nvim",
    lazy = false,
  },
  {
    "navarasu/onedark.nvim",
    opts = {
      style = "deep", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    },
  },
  {
    "sainnhe/sonokai",
  },
  {
    "tiagovla/tokyodark.nvim",
  },
}
