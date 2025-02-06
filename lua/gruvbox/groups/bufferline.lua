---@type GruvboxGroup
local M = {}

M.get = function(colors, opts)
    local style = opts.style
    ---@type GruvboxHighlights
    -- stylua: ignore
    return {
        BufferLineIndicatorSelected = { fg = colors.blue },
    }
end

return M
