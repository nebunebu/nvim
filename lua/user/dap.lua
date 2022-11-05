local dap = require "dap"
dap.configurations.lua = {
  {
    type = 'nlua',
    request = 'attach',
    name = "Attach to running Neovim instance",
  }
}

dap.adapters.nlua = function(callback, config)
  callback({ type = 'server', host = config.host or "127.0.0.1", port = config.port or 8086 })

end

vim.api.nvim_set_keymap('n', '<F8>', [[:lua require"dap".toggle_breakpoint()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<F9>', [[:lua require"dap".continue()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<F10>', [[:lua require"dap".step_over()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<S-F10>', [[:lua require"dap".step_into()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<F12>', [[:lua require"dap.ui.widgets".hover()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<F5>', [[:lua require"osv".launch({port = 8086})<CR>]], { noremap = true })

-- Debugging
--[[
vim.keymap.set("n", "<F4>", ":lua require('dapui').toggle()<CR>", opts)
vim.keymap.set("n", "<F5>", ":lua require('dap').toggle_breakpoint()<CR>", opts)
vim.keymap.set("n", "<F9>", ":lua require('dap').continue()<CR>", opts)

vim.keymap.set("n", "<F1>", ":lua require('dap').step_over()<CR>", opts)
vim.keymap.set("n", "<F2>", ":lua require('dap').step_into()<CR>", opts)
vim.keymap.set("n", "<F3>", ":lua require('dap').step_out()<CR>", opts)

vim.keymap.set("n", "<Leader>dsc", ":lua require('dap').continue()<CR>", opts)
vim.keymap.set("n", "<Leader>dsv", ":lua require('dap').step_over()<CR>", opts)
vim.keymap.set("n", "<Leader>dsi", ":lua require('dap').step_into()<CR>", opts)
vim.keymap.set("n", "<Leader>dso", ":lua require('dap').step_out()<CR>", opts)

vim.keymap.set("n", "<Leader>dhh", ":lua require('dap.ui.variables').hover()<CR>", opts)
vim.keymap.set("v", "<Leader>dhv", ":lua require('dap.ui.variables').visual_hover()<CR>", opts)

vim.keymap.set("n", "<Leader>duh", ":lua require('dap.ui.widgets').hover()<CR>", opts)
vim.keymap.set("n", "<Leader>duf", ":lua local widgets=require('dap.ui.widgets');widgets.centered_float(widgets.scopes)<CR>", opts)

vim.keymap.set("n", "<Leader>dro", ":lua require('dap').repl.open()<CR>", opts)
vim.keymap.set("n", "<Leader>drl", ":lua require('dap').repl.run_last()<CR>", opts)

vim.keymap.set("n", "<Leader>dbc", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opts)
vim.keymap.set("n", "<Leader>dbm", ":lua require('dap').set_breakpoint({ nil, nil, vim.fn.input('Log point message: ')<CR>", opts)
vim.keymap.set("n", "<Leader>dbt", ":lua require('dap').toggle_breakpoint()<CR>", opts)
vim.keymap.set("n", "<Leader>dc", ":lua require('dap.ui.variables').scopes()<CR>", opts)
vim.keymap.set("n", "<Leader>di", ":lua require('dapui').toggle()<CR>", opts)
]]
--
