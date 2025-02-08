local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors, _)
    local kinds = require("gruvbox.groups.kinds")
    return kinds.kinds(colors, nil, "BlinkCmpKind%s")
end

return M
