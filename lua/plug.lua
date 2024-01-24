local actions = require('telescope.actions')
local trouble = require('trouble.providers.telescope')
local telescope = require('telescope')

require("catppuccin").setup({
	flavour = "frappe"
})

vim.cmd.colorscheme("catppuccin")

require('nvim-treesitter.configs').setup({
	ensure_installed = "all",
	highlight = {
		enable = true, 
		disable = { "tex", "latex" },
	},
	rainbow = {
		enable = true,
		extended_mode = true,
	}
})

telescope.setup {}

require('trouble').setup {
	defaults = {
		mappings = {
			i = { ["<c-t>"] = trouble.open_with_trouble }, 
			n = { ["<c-t>"] = trouble.open_with_trouble },
		},
	},
}

require('alpha').setup(require('alpha.themes.dashboard').config)

require('noice').setup {}

vim.opt.termguicolors = true

require('Comment').setup {}

vim.o.timeout = true
vim.o.timeoutlen = 300
require('which-key').setup {}

-- require('bufferline').setup {}
require('lualine').setup {
	options = {
		theme = 'catppuccin'
	}
}

require('nvim-autopairs').setup {}

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

require('ibl').setup {}

require('toggleterm').setup {}

require('nvim-window').setup({})

require('neoclip').setup()

require('nvim-tree').setup() 

require('true-zen').setup {}

require('twilight').setup {}

require('nvim-treesitter.configs').setup {
	textsubjects = {
			enable = true,
			prev_selection = ',', 
			keymaps = {
					['.'] = 'textsubjects-smart',
					[';'] = 'textsubjects-container-outer',
					['i;'] = 'textsubjects-container-inner',
			},
	},
}

require('neoscroll').setup {}
