-- lua
local luacheck = require("efmls-configs.linters.luacheck")
local stylua = require("efmls-configs.formatters.stylua")
-- sh
local beautysh = require("efmls-configs.formatters.beautysh")
local shellcheck = require("efmls-configs.linters.shellcheck")
-- markdown
local markdownlint = require("efmls-configs.linters.markdownlint")
local mdformat = require("efmls-configs.formatters.mdformat")
-- tex
local chktex = require("efmls-configs.linters.chktex")
local latexindent = require("efmls-configs.formatters.latexindent")
-- yaml
local ansible_lint = require("efmls-configs.linters.ansible_lint")
local prettier = require("efmls-configs.formatters.prettier")
-- css ,scss
local stylelint = require("efmls-configs.linters.stylelint")

local languages = {
	lua = { luacheck, stylua },
	sh = { shellcheck, beautysh },
	md = { markdownlint, mdformat },
	tex = { chktex, latexindent },
	yaml = { ansible_lint, prettier },
	html = { prettier },
	css = { stylelint, prettier },
	scss = { stylelint, prettier },
}

local efmls_config = {
	filetypes = vim.tbl_keys(languages),
	settings = {
		rootMarkers = { ".git/" },
		languages = languages,
	},
	init_options = {
		documentFormatting = true,
		documentRangeFormatting = true,
	},
}

require("lspconfig").efm.setup(vim.tbl_extend("force", efmls_config, {}))


-- format on save
local lsp_fmt_group = vim.api.nvim_create_augroup("LspFormattingGroup", {})
vim.api.nvim_create_autocmd("BufWritePost", {
	group = lsp_fmt_group,
	callback = function()
		local efm = vim.lsp.get_active_clients({ name = "efm" })

		if vim.tbl_isempty(efm) then
			return
		end

		vim.lsp.buf.format({ name = "efm" })
	end,
})
