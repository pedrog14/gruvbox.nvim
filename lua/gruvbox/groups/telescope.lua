local M = {}

---@type GruvboxHighlightsGet
M.get = function()
    -- stylua: ignore
    ---@type GruvboxHighlights
    return {
        TelescopeNormal = { link = "NormalFloat" },
        TelescopeTitle  = { link = "FloatTitle" },
        TelescopeBorder = { link = "FloatBorder" },
    }
end

return M
