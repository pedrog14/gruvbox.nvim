local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
    ---@type GruvboxHighlights
    -- stylua: ignore
    return {
        BlinkIndent = { fg = colors.bg2 },
        BlinkIndentScope = { fg = colors.orange },

        BlinkIndentViolet = { fg = colors.purple },
        BlinkIndentBlue   = { fg = colors.blue },
        BlinkIndentCyan   = { fg = colors.aqua },
        BlinkIndentGreen  = { fg = colors.green },
        BlinkIndentYellow = { fg = colors.yellow },
        BlinkIndentOrange = { fg = colors.orange },
        BlinkIndentRed    = { fg = colors.red },

        BlinkIndentVioletUnderline = { sp = colors.purple, underline = true },
        BlinkIndentBlueUnderline   = { sp = colors.blue, underline = true },
        BlinkIndentCyanUnderline   = { sp = colors.aqua, underline = true },
        BlinkIndentGreenUnderline  = { sp = colors.green, underline = true },
        BlinkIndentYellowUnderline = { sp = colors.yellow, underline = true },
        BlinkIndentOrangeUnderline = { sp = colors.orange, underline = true },
        BlinkIndentRedUnderline    = { sp = colors.red, underline = true },
    }
end

return M
