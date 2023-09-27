local options = {
  opt = {
    clipboard = "unnamedplus",
    fillchars = { eob =" " },
    number = true,
    relativenumber = true,
    shiftwidth = 2,
    tabstop = 2,
    undofile = true,
    swapfile = false,
  },
  g = {
    mapleader = " ",
		markdown_fenced_languages = {
			"python",
			"c",
			"lua",
			"sh",
		}
  }
}

for scope, table in pairs(options) do
  for setting, value in pairs(table) do
    vim[scope][setting] = value
  end
end
