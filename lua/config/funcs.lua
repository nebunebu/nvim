-- Functions
function myZZ()
	if vim.fn.winnr('$') > 1 then
		vim.cmd('update') -- Saves File
		vim.cmd('close')
	else
		vim.cmd('silent! wall')
		vim.cmd('quit')
	end
end
