vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	--[[ Plugin Manager ]]
	--
	use("wbthomason/packer.nvim")
	use("lewis6991/impatient.nvim")
	use("nvim-lua/plenary.nvim")

	--[[ Package Manager ]]
	use({
		"williamboman/mason.nvim",
		"WhoISSethDaniel/mason-tool-installer.nvim",
		"jayp0521/mason-null-ls.nvim",
		"williamboman/mason-lspconfig.nvim",
		"jayp0521/mason-nvim-dap.nvim",
		"RubixDev/mason-update-all",
	})
	require("mason").setup()
	require("mason-update-all").setup()

	use("nvim-treesitter/nvim-treesitter")
	use("jose-elias-alvarez/null-ls.nvim")

	--[[ LSP ]]
	use("neovim/nvim-lspconfig")
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		config = function()
			local saga = require("lspsaga")

			saga.init_lsp_saga({
				-- your configuration
			})
		end,
	})

	--[[ Debugging ]]
	use("mfussenegger/nvim-dap")
	use("Pocco81/dap-buddy.nvim")
	use("rcarriga/nvim-dap-ui")
	use("theHamsta/nvim-dap-virtual-text")
	use("jbyuki/one-small-step-for-vimkind")

	--[[ Formatting ]]
	--
	--[[ Completion ]]
	use("hrsh7th/nvim-cmp") -- The completion plugin
	use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("hrsh7th/cmp-cmdline") -- cmdline completions
	use("saadparwaiz1/cmp_luasnip") -- snippet completions
	use("amarakon/nvim-cmp-lua-latex-symbols")
	--[[ Programming Language Support]]

	--[[ Web Development ]]
	-- TODO: add emmet
	--[[ Markdown/LaTex ]]
	-- -- requires deno
	-- use({ 'toppair/peek.nvim', run = 'deno task --quiet build:fast' }) -- Markdown Preview Plugin

	--[[ Syntax ]]
	--
	--[[ Snippet ]]
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

	--[[ Register ]]
	--
	--[[ Marks ]]
	--
	--[[ Search ]]
	--
	--[[ Fuzzy Finder ]]
	--
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
	})
	use({ "axkirillov/easypick.nvim", requires = "nvim-telescope/telescope.nvim" })
	use("ElPiloto/telescope-vimwiki.nvim")
	require("telescope").load_extension("vw")
  use("xiyaowong/telescope-emoji.nvim")
  require("telescope").load_extension("emoji")

	--[[ File Explorer ]]
	--
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons",
		},
		tag = "nightly", -- optional, updated every week.
	})

	--[[ Project ]]
	--[[ Color ]]
	use("uga-rosa/ccc.nvim") -- super powerful color picker

	--[[ Colorscheme ]]
	--
	use({ "norcalli/nvim-base16.lua", requires = { "norcalli/nvim.lua" } })

	--[[ Statusline ]]
	use({
		"konapun/vacuumline.nvim",
		requires = {
			"glepnir/galaxyline.nvim",
			branch = "main",
			"kyazdani42/nvim-web-devicons",
			opt = true,
		},
	})

	--[[ Tabline ]]
	--
	--[[ Cursorline ]]
	--
	--[[ Startup ]]
	-- use "glepnir/dashboard-nvim"

	--[[ Icon ]]
	--
	--[[ Media ]]
	--
	--[[ Note Taking ]]
	use("vimwiki/vimwiki")

	--[[ Utility ]]
	use("stevearc/dressing.nvim") --improve built-in vim.ui interfaces
	use("kyazdani42/nvim-web-devicons")
	use({ "crusj/bookmarks.nvim", branch = "main", requires = { "kyazdani42/nvim-web-devicons" } })
	use("nvim-lua/popup.nvim")
	-- use({
	--   "folke/noice.nvim",
	--   config = function()
	--     require("noice").setup()
	--   end,
	--   requires = {
	--     -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
	--     "MunifTanjim/nui.nvim",
	--     -- OPTIONAL:
	--     --   `nvim-notify` is only needed, if you want to use the notification view.
	--     --   If not available, we use `mini` as the fallback
	--     "rcarriga/nvim-notify",
	--     }
	-- })

	--[[ Terminal Integration ]]
	--
	--[[ Test ]]
	--TODO: move to neotest.lua
	use("olimorris/neotest-rspec")
	use({
		"nvim-neotest/neotest",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
			"antoinemadec/FixCursorHold.nvim",
			"olimorris/neotest-rspec",
		},
		config = function()
			require("neotest").setup({
				adapters = {
					require("neotest-rspec")({
						rspec_cmd = function()
							return vim.tbl_flatten({
								"bundle",
								"exec",
								"rspec",
							})
						end,
					}),
				},
			})
		end,
	})
	--[[ Code Runner ]]
	--[[ Neovim Lua Development ]]
	--[[ Dependency Management ]]
	--[[ Git ]]
	--[[ Github ]]
	--[[ Motion ]]
	use({
		"phaazon/hop.nvim",
		branch = "v2", -- optional but strongly recommended
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
		end,
	})
	require("hop").setup()
	--[[ Keybinding ]]
	--[[ Scrolling ]]
	--[[ Editing Support ]]
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use("RRethy/nvim-treesitter-endwise")
	use("windwp/nvim-ts-autotag")
	use("p00f/nvim-ts-rainbow")
	use("terrortylor/nvim-comment")
	  require("nvim_comment").setup()
	use({
		"Djancyp/better-comments.nvim",
		requires = { "nvim-treesitter/nvim-treesitter" },
	})
	--[[ Command Line ]]
	--[[ Session ]]
	--[[ Remote Development ]]
	--[[ Split and Window ]]
	--[[ Game ]]
	--[[ Boilerplate ]]
	--[[ My Developent ]]
	  -- use "/home/nebu/Projects/nvim_plugins/stack_map.nvim"
end)
