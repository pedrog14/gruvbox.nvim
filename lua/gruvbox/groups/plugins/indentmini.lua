local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
  ---@type GruvboxHighlights
  -- stylua: ignore
  return {
    IndentLine        = { fg = colors.bg2 },
    IndentLineCurrent = { fg = colors.orange },
  }
end

return M
