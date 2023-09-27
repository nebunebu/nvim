vim.cmd[[highlight SignColumn ctermbg=0]]
vim.cmd[[highlight NormalFloat ctermbg=7]]
vim.cmd([[
	autocmd FileType markdown syn match TaskCheckBox /- \[\(x\|\)\]/ contains=TaskCheckBox
	autocmd FileType markdown hi TaskCheckbox ctermbg=0
]])
-- vim.cmd[[highlight FloatBorder ctermbg=10]]
