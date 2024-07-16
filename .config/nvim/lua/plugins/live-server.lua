return {
  "barrett-ruth/live-server.nvim",
  build = "pnpm add -g live-server",
  cmd = { "LiveServerStart", "LiveServerStop", "LiveServerToggle" },
  keys = { { "<leader>cL", vim.cmd.LiveServerToggle, desc = "LiveServerToggle" }, },
  config = true,
}
