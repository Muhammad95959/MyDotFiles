return {
  "nvimdev/dashboard-nvim",
  commit = "63df284",
  opts = {
    theme = "hyper",
    shortcut_type = "number",
    change_to_vcs_root = true,
    config = {
      week_header = {
        enable = true,
      },
      shortcut = {
        { desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
        {
          icon = " ",
          icon_hl = "@variable",
          desc = "Files",
          group = "Label",
          action = "Telescope find_files",
          key = "f",
        },
        {
          desc = " quit",
          group = "DiagnosticHint",
          action = "quit",
          key = "q",
        },
      },
    },
  },
}
