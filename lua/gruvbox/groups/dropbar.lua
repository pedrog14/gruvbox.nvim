local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
    return require("gruvbox.groups.kinds").kinds(colors, nil, "DropBarIconKind%s")
end

return M
