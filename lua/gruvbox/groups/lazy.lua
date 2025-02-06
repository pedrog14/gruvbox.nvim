---@type GruvboxGroup
local M = {}

M.get = function(colors, opts)
    local style = opts.style
    ---@type GruvboxHighlights
    return {
        LazyButton = { bg = colors.bg2, fg = colors.fg1 },
    }
end

return M
