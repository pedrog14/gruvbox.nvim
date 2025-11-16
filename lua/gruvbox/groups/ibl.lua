local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors, _)
    -- stylua: ignore
    ---@type GruvboxHighlights
    return {
        IblIndent     = { fg = colors.bg2 },
        IblScope      = { fg = colors.orange },
        IblWhitespace = { fg = colors.bg2 },
    }
end

return M
