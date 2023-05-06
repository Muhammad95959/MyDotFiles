require("nvim-tree").setup{
    view = {
        width = 50,
    },
    renderer = {
        add_trailing = false,
        group_empty = true,
        highlight_git = false,
        full_name = false,
        highlight_opened_files = "none",
        highlight_modified = "none",
        root_folder_label = ":~:s?$?/..?",
        indent_width = 2,
        indent_markers = {
            enable = true,
            inline_arrows = false,
            icons = {
                corner = "└",
                edge = "│",
                item = "│",
                bottom = "─",
                none = " ",
            }
        }
    },
}

local api = require('nvim-tree.api')
local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
end
vim.keymap.set('n', '<CR>', api.node.open.tab, opts('Open: New Tab'))

vim.keymap.set('n', '<leader>n', '<cmd>NvimTreeToggle<CR>')
