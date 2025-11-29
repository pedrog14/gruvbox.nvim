local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
    -- stylua: ignore
    ---@type GruvboxHighlights
    return {
        GitSignsAdd    = { fg = colors.green  },
        GitSignsChange = { fg = colors.orange },
        GitSignsDelete = { fg = colors.red    },
    }
end

return M
