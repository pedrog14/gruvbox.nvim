local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
    ---@type GruvboxHighlights
    -- stylua: ignore
    local ret = {}
    return require("gruvbox.groups.kinds").kinds(colors, ret, "DropBarIconKind%s")
end

return M
