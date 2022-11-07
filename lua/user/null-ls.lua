require("null-ls").setup({
	sources = {

    -- Ruby
    -- lsp: solargraph
		require("null-ls").builtins.formatting.rubocop,

    -- Lua
    -- lsp: sumneko_lua
		require("null-ls").builtins.diagnostics.luacheck,
		require("null-ls").builtins.formatting.stylua,

		-- -- Latex
		-- require("null-ls").builtins.code_actions.proselint,
		-- require("null-ls").builtins.diagnostics.chktex,
		-- require("null-ls").builtins.diagnostics.proselint,
		-- require("null-ls").builtins.diagnostics.vale,
		-- require("null-ls").builtins.formatting.latexindent,

		--     -- Shell
		-- require("null-ls").builtins.code_actions.shellcheck,
		-- require("null-ls").builtins.diagnostics.shellcheck,
		-- require("null-ls").builtins.formatting.beautysh,
		-- require("null-ls").builtins.formatting.shellharden,
		-- require("null-ls").builtins.formatting.shfmt,
		-- require("null-ls").builtins.hover.printenv,


    -- C
	-- 	require("null-ls").builtins.diagnostics.clang_check,
	-- 	-- require("null-ls").builtins.diagnostics.cppcheck,
	-- 	require("null-ls").builtins.diagnostics.cpplint,
	-- 	-- require("null-ls").builtins.diagnostics.gccdiag,
	-- 	require("null-ls").builtins.formatting.astyle,
	-- 	require("null-ls").builtins.formatting.clang_format,
	-- 	require("null-ls").builtins.formatting.uncrustify,
	--
	--     -- Plaintext
	-- 	-- require("null-ls").builtins.code_actions.ltrs,
	-- 	-- require("null-ls").builtins.diagnostics.ltrs,
	-- 	require("null-ls").builtins.hover.dictionary,
	--
	--     -- JavaScript
	-- 	require("null-ls").builtins.code_actions.eslint,
	-- 	-- require("null-ls").builtins.code_actions.eslint_d,
	-- 	-- require("null-ls").builtins.code_actions.refactoring,
	-- 	-- require("null-ls").builtins.code_actions.xo,
	-- 	require("null-ls").builtins.diagnostics.eslint,
	-- 	-- require("null-ls").builtins.diagnostics.eslint_d,
	-- 	require("null-ls").builtins.diagnostics.jshint,
	-- 	-- require("null-ls").builtins.diagnostics.semistandardjs,
	-- 	-- require("null-ls").builtins.diagnostics.standardjs,
	-- 	require("null-ls").builtins.diagnostics.xo,
	-- --  formatting: deno_fmt | dprint | eslint | eslint_d | prettier |
	--   --  prettier_d_slim | prettier_standard | prettierd | rome | rustywind |
	--   --  semistandardjs | standardjs
	-- 	require("null-ls").builtins.formatting.prettier,

    -- Python
		-- require("null-ls").builtins.code_actions.refactoring,
    -- * diagnostics: flake8 | mypy | pycodestyle | pydocstyle | pylama | pylint | pyproject_flake8 | semgrep | vulture
	  -- formatting: autopep8 | black | blue | isort | reorder_python_imports | usort | yapf
	  -- * code_actions: refactoring
		-- require("null-ls").builtins.diagnostics.flake8,
		-- require("null-ls").builtins.formatting.prettier,


    -- HTML
		-- require("null-ls").builtins.formatting.prettier_d_slim,
		-- require("null-ls").builtins.formatting.prettierd,
		-- require("null-ls").builtins.formatting.rustywind,
		-- require("null-ls").builtins.formatting.tidy,

    -- ERB
		-- require("null-ls").builtins.diagnostics.erb_lint,
		-- require("null-ls").builtins.formatting.erb_lint,

    -- CSS
		-- require("null-ls").builtins.diagnostics.stylelint,
		-- require("null-ls").builtins.formatting.prettier,
		-- require("null-ls").builtins.formatting.prettier_d_slim,
		-- require("null-ls").builtins.formatting.prettierd,
		-- require("null-ls").builtins.formatting.stylelint,
		-- require("null-ls").builtins.formatting.tidy,

    -- YAML
	-- * diagnostics: actionlint | cfn_lint | spectral | yamllint
	-- * formatting: prettier | prettier_d_slim | prettierd | yamlfmt

    -- Markdown
    -- TOML
    -- vimscript
    -- elm
    -- elixir
    -- haskell
	},
})
