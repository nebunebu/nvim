vim.cmd([[ autocmd BufRead,BufNewFile *.conf set filetype=conf ]])
vim.cmd([[ autocmd BufReadPost * cd %:p:h ]])
