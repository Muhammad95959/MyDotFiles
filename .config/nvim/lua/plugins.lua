-- Comment.nvim configuration ----------------------------------------------------
require('Comment').setup()

-- Autopairs configuration -------------------------------------------------------
require("nvim-autopairs").setup()

-- Yanky.nvim configuration ------------------------------------------------------
require("yanky").setup({
      highlight = {
        timer = 200
      },
})

-- Impatient configuration -------------------------------------------------------
require('impatient').enable_profile()

-- TreeSitter configuration ------------------------------------------------------
require'nvim-treesitter.configs'.setup {
	highlight = {
		enable = true,
	},
	indent = {
		enable = true
	}
}
vim.opt.foldmethod="expr"
vim.opt.foldexpr="nvim_treesitter#foldexpr()"

-- Telescope configuration -------------------------------------------------------
require'telescope'.setup {
    defaults = {
        file_ignore_patterns = { "^Android/", "^.android/", "^.gradle/", "^go/", "^.local/", "^.cache/", "^.java/", "^.icons/", "^.zoom/" }
    }
}

-- wilder configuration ----------------------------------------------------------
local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
	return
end

cmp.setup({
	window = {
		completion = cmp.config.window.bordered(),  
	},
})

-- Completions configuration -----------------------------------------------------
local cmp = require'cmp'
cmp.setup {
	mapping = {
		["<C-n>"] = cmp.mapping.select_next_item(),
		["<C-p>"] = cmp.mapping.select_prev_item(),
		["<Tab>"] = cmp.mapping.select_next_item(),
		["<S-Tab>"] = cmp.mapping.select_prev_item(),
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
	},
	sources = {
		{ name = 'path' },
		{ name = 'buffer', keyword_length = 2 },
		{ name = 'zsh', keyword_length = 2 }
	}
}

cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = 'path' },
		{ name = 'cmdline' }
	}
})

cmp.setup.cmdline('/', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = 'buffer' }
	}
})

-- english dictionary completion ----------

-- require("cmp").setup({
-- 	sources = {
-- 		{
-- 			name = "dictionary",
-- 			keyword_length = 2,
-- 		},
-- 	}
-- })

-- require("cmp_dictionary").setup({
-- 	dic = { ["*"] = "~/.config/nvim/english.dict" }
-- })
