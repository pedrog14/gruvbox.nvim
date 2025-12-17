local M = {}

---@type GruvboxHighlightsGet
M.get = function()
  ---@type GruvboxHighlights
  -- stylua: ignore
  return {
    TreesitterContext          = { link = "Normal" },
    TreesitterContextSeparator = { link = "WinSeparator" },
  }
end

return M
