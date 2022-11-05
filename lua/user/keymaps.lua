-- vim.opt == set
-- vim.g == let
-- Remap space as leader key
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Packer
-- vim.keymap.set("n", "<leader>s", "<cmd>:PackerSync<CR>", opts)

-- TODO: format and recompile should prob be auto commands
-- Format
vim.keymap.set("n", "<leader>c", ":lua vim.lsp.buf.format()<CR>", opts)
-- TODO: set up range formatting
--vim.keymap.set("v", "<leader>c", ":lua vim.lsp.buf.range_formatting()<CR>", opts)

-- Recompile
vim.keymap.set("n", "<leader>r", ":lua _G.recompile()<CR>", opts)

-- Clear highlights
vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Comments
vim.keymap.set("n", "<leader>/", ":CommentToggle<CR>", opts)
vim.keymap.set("v", "<leader>/", ":CommentToggle<CR>", opts)

-- NvimTree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
vim.keymap.set("n", "<leader>fm", ":Telescope man_pages<CR>", opts)
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", opts)
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
vim.keymap.set("n", "<leader>fs", ":Telescope grep_string<CR>", opts)
vim.keymap.set("n", "<leader>fr", ":Telescope registers<CR>", opts)
vim.keymap.set("n", "<leader>fk", ":Telescope keymaps<CR>", opts)
vim.keymap.set("n", "<leader>fp", ":Telescope pickers<CR>", opts)
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<CR>", opts)
vim.keymap.set("n", "<leader>fw", ":Telescope vw<CR>", opts)

-- Hop
vim.keymap.set("n", "s", ":HopWord<CR>", opts)

-- Resize with arrows
vim.keymap.set("n", "<Up>", "<cmd>resize +2<CR>", opts)
vim.keymap.set("n", "<Down>", "<cmd>resize -2<CR>", opts)
vim.keymap.set("n", "<Left>", "<cmd>vertical resize +2<CR>", opts)
vim.keymap.set("n", "<Right>", "<cmd>vertical resize -2<CR>", opts)
-- nnoremap <C-Up> <cmd>resize -2<cr>
-- nnoremap <C-Down> <cmd>resize +2<cr>
-- nnoremap <C-Left> <cmd>vertical resize -2<cr>
-- nnoremap <C-Right> <cmd>vertical resize +2<cr>
--
-- -- Visual
-- -- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- --Move text up and down
-- vnoremap <A-j> <cmd>m .+1<CR>==
-- vnoremap <A-k> <cmd>m .-2<CR>==
-- vnoremap p "_dP
