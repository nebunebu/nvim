require("lazy").setup({
	"williamboman/mason.nvim",
	"nvim-lua/plenary.nvim",
	"nvim-treesitter/nvim-treesitter",
	"mrjones2014/nvim-ts-rainbow",
	"RRethy/nvim-treesitter-endwise",
	"windwp/nvim-autopairs",
	"folke/which-key.nvim",
	"numToStr/Comment.nvim",
	-- Markdown
	"jakewvincent/mkdnflow.nvim",
	"jubnzv/mdeval.nvim",
	"ishchow/nvim-deardiary",
	-- Syntax highlighting
	"elkowar/yuck.vim",
	"nvim-telescope/telescope.nvim",
	"nvim-tree/nvim-web-devicons",
	"goolord/alpha-nvim",
	{
			"sontungexpt/url-open",
			branch = "mini",
			event = "VeryLazy",
			cmd = "URLOpenUnderCursor",
			config = function()
					local status_ok, url_open = pcall(require, "url-open")
					if not status_ok then
							return
					end
					url_open.setup ({})
			end,
	},
	{
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		-- FIX: Bg colors don't show, probably because not using termgui colors
		},
	},
	{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
	},
	{
		"coffebar/neovim-project",
		opts = {
			projects = { -- define project roots
				"~/projects/*",
				"~/.config/*",
			},
		},
		init = function()
			-- enable saving the state of plugins in the session
			vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
		end,
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-telescope/telescope.nvim", tag = "0.1.0" },
			{ "Shatur/neovim-session-manager" },
		},
		priority = 100,
	},
	{
		'creativenull/efmls-configs-nvim',
		dependencies = { 'neovim/nvim-lspconfig' },
	},
	{
			'smoka7/hop.nvim',
			version = "*",
			opts = {},
	},
})
