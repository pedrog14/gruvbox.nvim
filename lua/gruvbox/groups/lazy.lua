local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
    ---@type GruvboxHighlights
    -- stylua: ignore
    return {
        LazyButton = { bg = colors.bg2, fg = colors.fg1 },
    }
end

return M
