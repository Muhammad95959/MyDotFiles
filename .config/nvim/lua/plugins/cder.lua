return {
  "zane-/cder.nvim",
  opts = {
    dir_command = { "fd", "--hidden", "--type=d", ".", os.getenv("HOME") },
  },
  config = function()
    require("telescope").load_extension("cder")
  end,
}
