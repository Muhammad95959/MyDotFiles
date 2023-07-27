return {
  "kevinhwang91/rnvimr",
  cmd = { "RnvimrToggle" },
  keys = { "<leader>r" },
  config = function()
    vim.g.rnvimr_enable_ex = 1
    vim.g.rnvimr_enable_picker = 1
    vim.g.rnvimr_action = {
      ["<CR>"] = "NvimEdit drop",
      ["<C-t>"] = "NvimEdit tabedit",
      ["<C-x>"] = "NvimEdit split",
      ["<C-v>"] = "NvimEdit vsplit",
      ["<C-o>"] = "NvimEdit drop",
      ["gw"] = "JumpNvimCwd",
      ["yw"] = "EmitRangerCwd",
    }

    vim.keymap.set("n", "<leader>r", vim.cmd.RnvimrToggle)
  end,
}
