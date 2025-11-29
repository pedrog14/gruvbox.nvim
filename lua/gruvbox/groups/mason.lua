local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
    ---@type GruvboxHighlights
    -- stylua: ignore
    return {
        MasonMuted                       = { fg = colors.gray },
        MasonMutedBlock                  = { fg = colors.bg0, bg = colors.gray },
        MasonMutedBlockBold              = { fg = colors.bg0, bg = colors.gray, bold = true },

        MasonLink                        = { fg = colors.blue },
        MasonHighlight                   = { fg = colors.blue },
        MasonHighlightBlock              = { fg = colors.bg0, bg = colors.blue },
        MasonHighlightBlockBold          = { fg = colors.bg0, bg = colors.blue, bold = true },
        MasonHeaderSecondary             = { fg = colors.bg0, bg = colors.blue, bold = true },

        MasonHighlightSecondary          = { fg = colors.orange },
        MasonHeader                      = { fg = colors.bg0, bg = colors.orange },
        MasonHighlightBlockSecondary     = { fg = colors.bg0, bg = colors.orange },
        MasonHighlightBlockBoldSecondary = { fg = colors.bg0, bg = colors.orange },

        MasonNormal                      = { link = "NormalFloat" },
        MasonHeading                     = { link = "Bold" },
    }
end

return M
