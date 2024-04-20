-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.cmd([[
  autocmd! BufEnter * if &ft ==# 'help' | wincmd L | endif
]])

vim.cmd([[
    function! RemoveEmpty()
        " Save cursor position
        let save_cursor = getpos('.')

        " Remove trailing spaces
        %s/\s\+$//e

        " Restore cursor position
        call setpos('.', save_cursor)

        " Remove empty lines with trailing white spaces
        %s/^\s*$\n\+//e

        " Restore cursor position
        call setpos('.', save_cursor)
    endfunction

    command! RemoveEmpty :call RemoveEmpty()
]])
