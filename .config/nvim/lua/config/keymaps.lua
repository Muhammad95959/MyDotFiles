-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

function Save_and_close_buffer()
    if #vim.fn.getbufinfo({buflisted = 1}) > 1 then
        vim.cmd('w | bdelete')
    else
        vim.cmd('wq')
    end
end

function Close_buffer()
    if #vim.fn.getbufinfo({buflisted = 1}) > 1 then
        vim.cmd('bdelete!')
    else
        vim.cmd('q!')
    end
end

map("n", "<A-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
map("n", "<A-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
map("n", "ZZ", ":lua Save_and_close_buffer()<cr>", { desc = "Save and close buffer"})
map("n", "ZQ", ":lua Close_buffer()<cr>", { desc = "Close buffer"})
