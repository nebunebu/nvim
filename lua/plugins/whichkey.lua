local opts = { noremap = true, silent = true }

require("which-key").setup({
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	popup_mappings = {
		scroll_down = "<Tab>",
		scroll_up = "<S-Tab>",
	},
	window = {
		-- border = "shadow"
	},
})

local wk = require("which-key")
-- Normal Mode
wk.register({
	["<leader>"] = {
		["/"] = {
			"<cmd>lua require('Comment.api').toggle.linewise.current()<CR>",
			"Toggle Line Comment"
		},
		["w"] = {
			name = "Mkdnflow",
			w = {
				"<cmd>e /home/nebu/Wiki/index.md<CR>",
				"Open wiki index"
			},
			e = {
				"<cmd>lua require('mdeval').eval_code_block()<CR>",
				"Evaluate code block"
			},
			c = {
				"<cmd>MdEvalClean<CR>",
				"Clean evaluated code block"
			},
		},
		["f"] = {
			name = "Telescope",
			f =
			{ "<cmd>Telescope find_files<CR>",
				"Find files"
			},
			o =
			{ "<cmd>Telescope oldfiles<CR>",
				"Find old files"
			},
			m =
			{ "<cmd>Telescope man_pages<CR>",
				"Find man pages"
			},
			c =
			{ "<cmd>Telescope current_buffer_fuzzy_find<CR>",
				"Find in current buffer"
			},
			h =
			{ "<cmd>Telescope help_tags<CR>",
				"Find help tags"
			}
		},
		h = {
			"<cmd>nohlsearch<CR>",
			"Clear Search Highlights"
		},
	["i"] = {
		name = "url-open",
		o = {
			"<cmd>URLOpenUnderCursor<CR>",
			"Open url"
		},
		h = {
			"<cmd>URLOpenHighlightAll<CR>",
			"Higlight urls"
		},
		c = {
			"<cmd>:URLOpenHIghlightAllClear<CR>",
			"Clear url highlights"
		}
	},
	["t"] = {
		name = "Neotree",
		t = {
			"<cmd>:Neotree float<CR>",
			"Open Neotree"
		}
	},
	["<leader>"] = {
		name = "Hop",
		w = {
			"<cmd>:HopWord<CR>",
			"Hop word"
		}
	},
	}
}, { mode = "n" })

-- Visual Mode
wk.register({
	["ZZ"] = {
		"<cmd>lua myZZ()<CR>", "Close"
	},
	["<"] = {
		"<gv", "Dedent and keep selection"
	},
	[">"] = {
		">gv", "Indent and keep selection"
	},
	["<leader>"] = {
		["/"] = {
			"<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
			"Toggle Visual Comment"
		}
	}
}, { mode = "x" })
