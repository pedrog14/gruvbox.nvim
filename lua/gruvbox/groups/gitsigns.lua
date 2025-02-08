local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors, _)
    ---@type GruvboxHighlights
    return {
        GitSignsAdd = { fg = colors.green },
        GitSignsChange = { fg = colors.orange },
        GitSignsDelete = { fg = colors.red },
    }
end

return M
