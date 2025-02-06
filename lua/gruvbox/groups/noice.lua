---@type GruvboxGroup
local M = {}

M.get = function(colors, opts)
    local style = opts.style
    ---@type GruvboxHighlights
    return {
        NoiceCmdlineIcon = { fg = colors.red },
        NoiceCmdlineIconLua = { fg = colors.blue },
    }
end

return M
