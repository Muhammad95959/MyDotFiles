return {
  "zane-/cder.nvim",
  keys = {
    { "<C-t>", "<cmd>Telescope cder<cr>", desc = "cder" },
  },
  config = function()
    require('telescope').load_extension('cder')
  end,
}
