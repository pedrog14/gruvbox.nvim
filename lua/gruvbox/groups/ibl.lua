local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
    ---@type GruvboxHighlights
    -- stylua: ignore
    return {
        IblIndent     = { fg = colors.bg2 },
        IblScope      = { fg = colors.orange },
        IblWhitespace = { fg = colors.bg2 },
    }
end

return M
