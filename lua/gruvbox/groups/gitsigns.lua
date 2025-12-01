local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
    ---@type GruvboxHighlights
    -- stylua: ignore
    return {
        GitSignsAdd    = { fg = colors.green  },
        GitSignsChange = { fg = colors.yellow },
        GitSignsDelete = { fg = colors.red    },
    }
end

return M
