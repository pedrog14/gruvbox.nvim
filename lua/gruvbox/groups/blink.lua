local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors, _)
    ---@type GruvboxHighlights
    local ret = {
        BlinkCmpGhostText = { link = "NonText" },
    }
    return require("gruvbox.groups.kinds").kinds(colors, ret, "BlinkCmpKind%s")
end

return M
