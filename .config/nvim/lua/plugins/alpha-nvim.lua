return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = function()
    local startify = require("alpha.themes.startify")
    local logo = [[

                                              
       ████ ██████           █████      ██
      ███████████             █████ 
      █████████ ███████████████████ ███   ███████████
     █████████  ███    █████████████ █████ ██████████████
    █████████ ██████████ █████████ █████ █████ ████ █████
  ███████████ ███    ███ █████████ █████ █████ ████ █████
 ██████  █████████████████████ ████ █████ █████ ████ ██████

    ]]
    startify.section.header.val = vim.split(logo, "\n")
  end,
  config = function()
    require("alpha").setup(require("alpha.themes.startify").config)
    vim.keymap.set("n", "<leader>a", ":Alpha<cr>", { desc = "Alpha Toggle", silent = true })
  end,
}
