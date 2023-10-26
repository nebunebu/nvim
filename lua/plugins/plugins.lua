require("lazy").setup({
	"williamboman/mason.nvim",
  "nvim-lua/plenary.nvim",
	"nvim-treesitter/nvim-treesitter",
	-- "mrjones2014/nvim-ts-rainbow", -- causing error with ts language server
	"RRethy/nvim-treesitter-endwise",
	"windwp/nvim-autopairs",
	-- "windwp/nvim-ts-autotag",
	"folke/which-key.nvim",
	"numToStr/Comment.nvim",
	"jakewvincent/mkdnflow.nvim",
	"neovim/nvim-lspconfig",
	"stevearc/dressing.nvim",
	{
			'2kabhishek/nerdy.nvim',
			dependencies = {
					'stevearc/dressing.nvim',
					'nvim-telescope/telescope.nvim',
			},
			cmd = 'Nerdy',
	},

	"L3MON4D3/LuaSnip",
	"hrsh7th/nvim-cmp",
	"saadparwaiz1/cmp_luasnip", 								-- (luasnip) snippet engine
	-- "L3MON4D3/cmp-luasnip-choice",							-- (luasnip-choice)
	-- "hrsh7th/cmp-nvim-lsp-signature-help",
	"ray-x/cmp-treesitter", 										-- (treesitter)
	"hrsh7th/cmp-nvim-lsp", 										-- (nvim_lsp) neovim lang server client
	"hrsh7th/cmp-nvim-lua", 										-- (nvim_lua) neovim lua api
	"hrsh7th/cmp-buffer", 											-- (buffer) buffer words
	"hrsh7th/cmp-cmdline", 											-- (cmdline) command line suggestions
	"hrsh7th/cmp-path", 												-- (path) paths of files and folders
	"tamago324/cmp-zsh",												-- (zsh)
	"andersevenrud/cmp-tmux",										-- (tmux)
	-- "chrisgrieser/cmd-nerdfont",								-- (nerdfont)
	"kdheepak/cmp-latex-symbols",								-- (latex_symbols)
	"Saecki/crates.nvim",												-- (crates)
	"KadoBOT/cmp-plugins", 											-- (plugins) neovim plugins
	"petertriho/cmp-git", 											-- (git)
	-- "rcarriga/cmp-dap",													-- (dap) debug adapter
	-- "tzachar/cmp-ai",														-- (cmp-ai) any ai/chat to cmp
	"uga-rosa/cmp-dictionary",									-- (dictionary)
	"onsails/lspkind.nvim",

	{
		'mrcjkb/haskell-tools.nvim',
		dependencies = {
			'nvim-lua/plenary.nvim',
		},
		version = '^2', -- Recommended
		ft = { 'haskell', 'lhaskell', 'cabal', 'cabalproject' },
	},

	"mrcjkb/haskell-snippets.nvim",
	"jubnzv/mdeval.nvim",
	"ishchow/nvim-deardiary",
	"nvimtools/none-ls.nvim",
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
	{ 'smoka7/hop.nvim', version = "*", opts = {}, },
	-- tmux stuff
	"christoomey/vim-tmux-navigator",
	"tpope/vim-obsession",
	{
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
})
