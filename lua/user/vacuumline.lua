require('vacuumline').setup({
  theme = {
    line             = {foreground = '#931ba6', background = '#000000'},
    segment_odd      = {foreground = '#e2e9f0', background = '#931ba6'},
    segment_even     = {foreground = '#000000', background = '#008b94'},
    mode_normal      = {foreground = '#8bd49c'},
    mode_insert      = {foreground = '#8bd49c'},
    mode_command     = {foreground = '#8bd49c'},
    mode_visual      = {foreground = '#8bd49c'},
    mode_visual_line = {foreground = '#8bd49c'},
    mode_terminal    = {foreground = '#8bd49c'},
    warning          = {foreground = '#000000', background = '#e8a74c'},
    error            = {foreground = '#000000', background = '#db334c'},
    scroll           = {foreground = '#e2e9f0'}
  }

})

--  #1d252c
--  #566c7d
--  #db334c
--  #d95468
--  #42cc62
--  #8bd49c
--  #e8a74c
--  #ebbf83
--  #178cd4
--  #5ec4ff
--  #931ba6
--  #c06ece
--  #008b94
--  #70e1e8
--  #a0b3c5
--  #e2e9f0

-- Defaults
-- {
--   separator = {
--     segment = {
--       left = '',
--       right = ''
--     },
--     section = {
--       left = '',
--       right = ''
--     }
--   },
--   color = {
--     foreground = {line = '#98971a', even = '#282828', odd = '#282828'},
--     background = {line = '#282828', even = '#b16286', odd = '#98971a'},
--   },
--   segment = {
--     mode = {
--       map = {
--         n = {label = ' ', background = '#b16286'}, -- NORMAL
--         i = {label = ' ', background = '#98971a'}, -- INSERT
--         c = {label = ' ', background = '#458588'}, -- COMMAND
--         v = {label = ' ', background = '#d79921'}, -- VISUAL
--         V = {label = ' ', background = '#fabd2f'}, -- VISUAL LINE
--         t = {label = ' ', background = '#d3869b'}, -- TERMINAL
--       }
--     },
--     file = {},
--     vcs = {},
--     scroll = {
--       accent = '#d79921',
--     },
--     lines = {},
--     diagnostics = {
--       background = '#fb4934',
--       errors = {
--         foreground = '#282828',
--         background = '#fb4934'
--       },
--       warnings = {
--         foreground = '#282828',
--         background = '#fabd2f'
--       }
--     },
--     search = {},
--     lsp = {
--       foreground = '#98971a',
--       background = '#282828'
--     }
--   }
-- }
