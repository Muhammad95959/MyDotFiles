vim.g.lightline = {
  colorscheme = 'one',
  active = {
    left = { { 'mode', 'paste' }, { 'readonly', 'filename', 'modified' } },
    right = { { 'lineinfo' }, { 'percent' } }
  },
  separator = { left = "", right = "" },
  subseparator = { left = "", right = "" },
}
