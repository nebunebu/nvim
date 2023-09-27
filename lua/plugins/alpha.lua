local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
	[[    .--.   ]],
	[[   |o_o |  ]],
	[[   |:_/ |  ]],
	[[  //   \ \ ]],
	[[ (|     | )]],
	[[/'\_   _/`\]],
	[[\___)=(___/]],
}
-- Set menu
dashboard.section.buttons.val = {
	dashboard.button("n", "  > New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("f", "  > Find file", ":cd $HOME/ | Telescope find_files<CR>"),
	dashboard.button("o", "  > Recent Files", ":Telescope oldfiles<CR>"),
	dashboard.button("w", "  > Wiki", ":e $HOME/Wiki/index.md<CR>"),
	dashboard.button("v", "  > nvim conf", ":cd $HOME/.config/nvim/ | Telescope find_files<CR>"),
	dashboard.button("h", "  > hypr conf", ":cd $HOME/.config/hypr/ | Telescope find_files<CR>"),
	dashboard.button("c", "  > configs", ":cd $HOME/.config/ | Telescope find_files<CR>"),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
