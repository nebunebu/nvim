require("nvim-tree").setup({
  sort_by = "case_sensitive",
  -- reload_on_bufenter = true,
  -- sync_root_with_cwd = true,
  -- respect_buf_cwd = true,
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
