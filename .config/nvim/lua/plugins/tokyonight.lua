return {
  "folke/tokyonight.nvim",
  lazy = true,
  opts = {
    style = "moon",
    on_highlights = function(hl, c)
      hl.Comment = {
        fg = "#808fdf",
      }
      hl.LineNr = {
        fg = "#7777bb",
      }
      hl.CursorLineNr = {
        fg = c.fg,
        -- bg = c.bg_highlight,
      }
    end,
  },
}
