local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
    ---@type GruvboxHighlights
    -- stylua: ignore
    local ret = {
        BlinkCmpGhostText = { link = "NonText" },
    }
    return require("gruvbox.groups.kinds").kinds(colors, ret, "BlinkCmpKind%s")
end

return M
