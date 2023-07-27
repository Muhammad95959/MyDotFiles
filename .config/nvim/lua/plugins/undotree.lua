return {
  cmd = { "UndotreeToggle" },
  lazy = false,
  "mbbill/undotree",

  vim.keymap.set("n", "<leader>uu", vim.cmd.UndotreeToggle),
}
