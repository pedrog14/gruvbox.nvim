local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
    ---@type GruvboxHighlights
    -- stylua: ignore
    return {
        BufferLineIndicatorSelected = { fg = colors.blue },
    }
end

return M
