local use = require("packer").use

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

local lspconfig = require("lspconfig")

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = {
	-- ruby
	"solargraph",
	-- lua
	"sumneko_lua",
	--
	-- -- 'anakin_language_server',
	-- -- 'angularls',
	-- -- 'ansiblels',
	-- -- 'antlersls',
	-- -- 'apex_ls',
	-- -- 'arduino_language_server',
	-- -- 'asm_lsp',
	-- -- 'astro',
	-- 'awk_ls',
	-- 'bashls',
	-- -- 'beancount',
	-- -- 'bicep',
	-- -- 'blueprint_ls',
	-- -- 'bsl_ls',
	-- -- 'bufls',
	-- -- 'ccls',
	-- 'clangd',
	-- -- 'clarity_lsp',
	-- -- 'clojure_lsp',
	-- 'cmake',
	-- -- 'codeqlls',
	-- -- 'crystalline',
	-- -- 'csharp_ls',
	-- 'cssls',
	-- 'cssmodules_ls',
	-- -- 'cucumber_language_server',
	-- -- 'dafny',
	-- -- 'dagger',
	-- -- 'dartls',
	-- 'denols',
	-- -- 'dhall_lsp_server',
	-- -- 'diagnosticls',
	-- 'dockerls',
	-- -- 'dotls',
	-- -- 'efm',
	-- 'elixirls',
	-- 'elmls',
	-- -- 'ember',
	-- 'emmet_ls',
	-- -- 'erg_language_server',
	-- -- 'erlangls',
	-- -- 'esbonio',
	-- 'eslint',
	-- -- 'flow',
	-- -- 'flux_lsp',
	-- -- 'foam_ls',
	-- -- 'fortls',
	-- -- 'fsautocomplete',
	-- -- 'fsharp_language_server',
	-- -- 'fstar',
	-- -- 'gdscript',
	-- -- 'ghcide',
	-- -- 'ghdl_ls',
	-- -- 'glint',
	-- -- 'glslls',
	-- -- 'golangci_lint_ls',
	-- -- 'gopls',
	-- -- 'gradle_ls',
	-- 'grammarly',
	-- 'graphql',
	-- -- 'groovyls',
	-- -- 'haxe_language_server',
	-- -- 'hdl_checker',
	-- -- 'hhvm',
	-- -- 'hie',
	-- -- 'hls',
	-- -- 'hoon_ls',
	-- 'html',
	-- -- 'idris2_lsp',
	-- -- 'intelephense',
	-- -- 'java_language_server',
	-- -- 'jdtls',
	-- -- 'jedi_language_server',
	-- 'jsonls',
	-- 'jsonnet_ls',
	-- -- 'julials',
	-- -- 'kotlin_language_server',
	-- -- 'lean3ls',
	-- -- 'leanls',
	-- -- 'lelwel_ls',
	-- 'lemminx',
	-- 'ltex',
	-- 'luau_lsp',
	-- -- 'm68k',
	-- 'marksman',
	-- -- 'metals',
	-- -- 'mint',
	-- -- 'mlir_lsp_server',
	-- -- 'mlir_pdll_lsp_server',
	-- -- 'mm0_ls',
	-- -- 'move_analyzer',
	-- -- 'neocmake',
	-- -- 'nickel_ls',
	-- -- 'nil_ls',
	-- -- 'nimls',
	-- -- 'nxls',
	-- -- 'ocamlls',
	-- -- 'ocamllsp',
	-- -- 'ols',
	-- -- 'omnisharp',
	-- -- 'opencl_ls',
	-- -- 'openscad_ls',
	-- -- 'pasls',
	-- -- 'perlls',
	-- 'perlnavigator',
	-- -- 'perlpls',
	-- -- 'phan',
	-- -- 'phpactor',
	-- -- 'please',
	-- -- 'powershell_es',
	-- -- 'prismals',
	-- 'prosemd_lsp',
	-- -- 'psalm',
	-- -- 'puppet',
	-- -- 'purescriptls',
	-- -- 'pylsp',
	-- -- 'pyre',
	-- 'pyright',
	-- -- 'qml_lsp',
	-- -- 'qmlls',
	-- -- 'quick_lint_js',
	-- -- 'r_language_server',
	-- -- 'racket_langserver',
	-- -- 'reason_ls',
	-- -- 'relay_lsp',
	-- 'remark_ls',
	-- -- 'rescriptls',
	-- -- 'rls',
	-- -- 'rnix',
	-- -- 'robotframework_ls',
	-- -- 'rome',
	-- -- 'ruby_ls',
	-- -- 'rust_analyzer',
	-- -- 'salt_ls',
	-- -- 'scry',
	-- -- 'serve_d',
	-- -- 'sixtyfps',
	-- -- 'slint_lsp',
	-- -- 'solang',
	-- 'solargraph',
	-- -- 'solc',
	-- -- 'solidity',
	-- -- 'solidity_ls',
	-- -- 'sorbet',
	-- -- 'sourcekit',
	-- -- 'sourcery',
	-- -- 'spectral',
	-- 'sqlls',
	-- 'sqls',
	-- -- 'steep',
	-- -- 'stylelint_lsp',
	-- -- 'svelte',
	-- -- 'svlangserver',
	-- -- 'svls',
	-- -- 'syntax_tree',
	-- 'tailwindcss',
	-- 'taplo',
	-- -- 'tblgen_lsp_server',
	-- -- 'teal_ls',
	-- -- 'terraform_lsp',
	-- -- 'terraformls',
	-- 'texlab',
	-- -- 'tflint',
	-- -- 'theme_check',
	-- -- 'tilt_ls',
	-- 'tsserver',
	-- -- 'typeprof',
	-- -- 'vala_ls',
	-- -- 'vdmj',
	-- -- 'verible',
	-- -- 'veridian',
	-- 'vimls',
	-- -- 'visualforce_ls',
	-- -- 'vls',
	-- -- 'volar',
	-- 'vuels',
	-- -- 'wgsl_analyzer',
	-- 'yamlls',
	-- -- 'zk',
	-- -- 'zls',
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		-- on_attach = my_custom_on_attach,
		capabilities = capabilities,
	})
end

-- luasnip setup
local luasnip = require("luasnip")

-- nvim-cmp setup
local cmp = require("cmp")
cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},

	mapping = cmp.mapping.preset.insert({
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	}),
	sources = {
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	},
})

-- FIX: does not run in single file mode
require("lspconfig").solargraph.setup({})

require("lspconfig").sumneko_lua.setup({
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
})
