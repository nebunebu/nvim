local options = {
  opt = {
    clipboard = "unnamedplus",
    fillchars = { eob =" " },
    number = true,
    relativenumber = true,
		expandtab = true,
    shiftwidth = 2,
    tabstop = 2,
    undofile = true,
    swapfile = false,

-- set expandtab
-- set tabstop=4
-- set shiftwidth=4
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
