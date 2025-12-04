local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
    ---@type GruvboxHighlights
    return {
        GitSignsAdd = { fg = colors.green },
        GitSignsChange = { fg = colors.aqua },
        GitSignsDelete = { fg = colors.red },
    }
end

return M
