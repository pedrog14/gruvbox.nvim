local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors, _)
    ---@type GruvboxHighlights
    return {
        LazyButton = { bg = colors.bg2, fg = colors.fg1 },
    }
end

return M
