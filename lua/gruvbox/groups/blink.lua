local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors, _)
    ---@type GruvboxHighlights
    return require("gruvbox.groups.kinds").kinds(colors, nil, "BlinkCmpKind%s")
end

return M
