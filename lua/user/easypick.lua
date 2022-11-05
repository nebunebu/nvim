local easypick = require("easypick")

easypick.setup({
	pickers = {
		-- add your custom pickers here
		{
			name = "ls",
			command = "ls",
			previewer = easypick.previewers.default(),
		},

		{
			name = "nvims",
			command = "ls ~/.config/nvims",
			previewer = easypick.previewers.default(),
		},

		{
			name = "",
			command = "",
			previewer = easypick.previewers.default(),
		},
	},
})
