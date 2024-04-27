return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>fh", "<cmd>Telescope find_files hidden=true search_dirs=~<cr>", desc = "Find Files in $HOME" },
  },
  config = function()
    require("telescope").setup({
      extensions = {
        cder = {
          dir_command = { "fd", "--hidden", "--type=d", ".", os.getenv("HOME") },
          previewer_command = "exa "
            .. "-a "
            .. "--color=always "
            .. "-T "
            .. "--level=3 "
            .. "--icons "
            .. "--git-ignore "
            .. "--git "
            .. "--ignore-glob=.git",
        },
      },
    })
  end,
}
