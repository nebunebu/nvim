require("nvim-treesitter.configs").setup {
  -- highlight = {
  --     -- ...
  -- },
  -- -- ...
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    colors = {
      "#e8a74c",
      "#42cc62",
      "#008b94",
      "#931ba6",
      "#178cd4",
      "#e2e9f0",
      -- "#db334c",
      -- "#8bd49c",
      -- "#ebbf83",
      -- "#5ec4ff",
      -- "#c06ece",
      -- "#70e1e8",
      -- "#a0b3c5",
      -- "#d95468",
    },
    -- termcolors = {} -- table of colour name strings
  },
}
