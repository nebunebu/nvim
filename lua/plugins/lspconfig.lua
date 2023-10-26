-- Add additional capabilities supported by nvim-cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require('lspconfig')
local lspkind = require('lspkind')


-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = {
	'lua_ls',
  'clangd',
  'tsserver',
	'bashls'
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- on_attach = my_custom_on_attach,
    capabilities = capabilities,
  }
end

-- luasnip setup
local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol', -- show only symbol annotations
       -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
      maxwidth = 50,
     -- when popup menu exceed maxwidth,
     -- the truncated part would show ellipsis_char instead (must define maxwidth first)
      ellipsis_char = '...',
      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization.
      -- (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
      before = function (entry, vim_item)
        -- ...
        return vim_item
      end
    })
  },
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-u>'] = cmp.mapping.scroll_docs(-4), -- Up
    ['<C-d>'] = cmp.mapping.scroll_docs(4), -- Down
    -- C-b (back) C-f (forward) for snippet placeholder navigation.
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  sources = {
    { name = 'luasnip' },
    { name = 'treesitter' },
    { name = 'nvim_lsp' },
    { name = 'nvim_lua' },
    -- { name = 'buffer' },
    -- { name = 'cmdline' },
    -- { name = 'path' },
    { name = 'cmp-zsh' },
    { name = 'cmp-tmux' },
    -- { name = 'nerdfont' },
    { name = 'latex_symbols' },
    -- { name = 'crates' },
    { name = 'plugins' },
    { name = 'git' },
    { name = 'dictionary' },
    -- { name = 'dap' },
    -- { name = 'cmp-ai' },
    -- { name = 'nvim_lsp_signature_help' },
    -- { name = 'autohotkey' },
  },
}
