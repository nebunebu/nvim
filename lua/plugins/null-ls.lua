local null_ls = require("null-ls")

null_ls.setup({
	sources = {
			-- Shell
			null_ls.builtins.formatting.beautysh,
			null_ls.builtins.diagnostics.shellcheck,
			null_ls.builtins.hover.printenv,
			-- Lua
			null_ls.builtins.formatting.stylua,
			null_ls.builtins.diagnostics.luacheck,
			-- LaTex
			null_ls.builtins.formatting.latexindent,
			null_ls.builtins.diagnostics.proselint,
      -- C
			null_ls.builtins.formatting.clang_format,
			null_ls.builtins.diagnostics.cpplint,
      -- JS, TS
			null_ls.builtins.formatting.prettier,
			null_ls.builtins.diagnostics.standardjs,
	},
	-- source.method = null_ls.methods.HOVER,
})
