---@type GruvboxGroup
local M = {}

M.get = function(colors, opts)
    local style = opts.style
    ---@type GruvboxHighlights
    return {
        GitSignsAdd = { fg = colors.green },
        GitSignsChange = { fg = colors.orange },
        GitSignsDelete = { fg = colors.red },
    }
end

return M
