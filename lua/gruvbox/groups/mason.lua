local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors, opts)
    local style = opts.style
    ---@type GruvboxHighlights
    return {
        MasonMuted = { fg = colors.gray },
        MasonMutedBlock = { fg = colors.bg0, bg = colors.gray },
        MasonMutedBlockBold = {
            fg = colors.bg0,
            bg = colors.gray,
            bold = style.bold,
        },

        MasonLink = { fg = colors.blue },
        MasonHighlight = { fg = colors.blue },
        MasonHighlightBlock = { fg = colors.bg0, bg = colors.blue },
        MasonHighlightBlockBold = {
            fg = colors.bg0,
            bg = colors.blue,
            bold = style.bold,
        },
        MasonHeaderSecondary = {
            fg = colors.bg0,
            bg = colors.blue,
            bold = style.bold,
        },

        MasonHighlightSecondary = { fg = colors.orange },
        MasonHeader = { fg = colors.bg0, bg = colors.orange },
        MasonHighlightBlockSecondary = { fg = colors.bg0, bg = colors.orange },
        MasonHighlightBlockBoldSecondary = {
            fg = colors.bg0,
            bg = colors.orange,
        },

        MasonNormal = { link = "NormalFloat" },
        MasonHeading = { bold = style.bold },
    }
end

return M
