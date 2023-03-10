local trouble = require('trouble')
local actions = require('trouble.providers.telescope')
local treesitter = require('nvim-treesitter.configs')
local telescope = require('telescope')
local tsc = require('nvim-treesitter.configs')
local bufferline = require('bufferline')
local lualine = require('lualine')
local autopairs = require('nvim-autopairs')
local blankline = require('indent_blankline')
local toggleterm = require('toggleterm')
local orgmode = require('orgmode')
local noice = require('noice')
local alpha = require('alpha')
local tree = require('nvim-tree')
local comment = require('Comment')
-- local whichkey = require('which-key')

treesitter.setup({
	ensure_installed = "all",

	highlight = {
		enable = true, 
		disable = { "tex", "latex" },
	},
})

telescope.setup {}

trouble.setup {
	defaults = {
		mappings = {
			i = { ["<c-t>"] = trouble.open_with_trouble }, 
			n = { ["<c-t>"] = trouble.open_with_trouble },
		},
	},
}

alpha.setup(require('alpha.themes.dashboard').config)

noice.setup {}

vim.opt.termguicolors = true
tree.setup {}


comment.setup {}

--vim.o.timeout = true
--vim.o.timeoutlen = 300
-- whichkey.setup {}

tsc.setup {
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
	}
}

bufferline.setup {}

lualine.setup {
	options = {
		theme = 'auto', 
	}
}

autopairs.setup {}

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

blankline.setup {
  space_char_blankline = " ",
  show_current_context = true,
	show_current_context_start = true,
}

toggleterm.setup {}

orgmode.setup {}
orgmode.setup_ts_grammar()

require('org-bullets').setup() -- sub plugins
require('headlines').setup()

require('pretty-fold').setup {}
require('pretty-fold.preview').setup {}

require('nvim-window').setup({})
