local M = {}

---@type GruvboxHighlightsGet
M.get = function()
  ---@type GruvboxHighlights
  -- stylua: ignore
  return {
    TelescopeNormal = { link = "NormalFloat" },
    TelescopeTitle  = { link = "FloatTitle"  },
    TelescopeBorder = { link = "FloatBorder" },
  }
end

return M
