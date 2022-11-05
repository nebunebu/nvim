require("better-comment").Setup({
  tags = {

        {
            name = "TODO",
            fg = "#000000",
            bg = "#42cc62",
            bold = true,
            virtual_text = "",
        },
        
        {
          name = "FIX",
          fg = "#e2e9f0",
          bg = "#0a7aca",
          bold = true,
          virtual_text = "",
        },

        -- {
        --     name = "FIX",
        --     fg = "#e2e9f0",
        --     bg = "#f44747",
        --     bold = true,
        --     virtual_text = "This is virtual Text from FIX",
        -- },
        
        -- {
        --     name = "WARNING",
        --     fg = "#e8a74c",
        --     bold = false,
        --     virtual_text = "This is virtual Text from WARNING",
        -- },
        
        -- {
        --     name = "!",
        --     fg = "#f44747",
        --     bg = "",
        --     bold = true,
        --     virtual_text = "",
        -- },

    }
})

-- Examples
-- TODO: Example
-- FIX: Example
-- WARNING: Example
-- !: Example
