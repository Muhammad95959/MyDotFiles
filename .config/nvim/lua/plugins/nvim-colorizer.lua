return {
  "norcalli/nvim-colorizer.lua",
  keys = { { "<leader>uz", vim.cmd.ColorizerToggle, desc = "Colorizer Toggle" }, },
  config = function(_, opts)
    require("colorizer").setup(opts)
  end,
}
