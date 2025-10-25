local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors, opts)
    ---@type GruvboxHighlights
    return {
        TelescopeNormal = { link = "NormalFloat" },
        TelescopeTitle = { fg = colors.blue, bold = true },
        TelescopeBorder = { fg = colors.bg3 },
    }
end

return M
