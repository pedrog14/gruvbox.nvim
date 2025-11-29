local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
    -- stylua: ignore
    ---@type GruvboxHighlights
    return {
        IblIndent     = { fg = colors.bg2 },
        IblScope      = { fg = colors.orange },
        IblWhitespace = { fg = colors.bg2 },
    }
end

return M
