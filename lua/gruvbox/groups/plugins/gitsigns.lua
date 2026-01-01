local M = {}

---@type GruvboxHighlightsGet
M.get = function()
  ---@type GruvboxHighlights
  -- stylua: ignore
  return {
    GitSignsAdd    = { link = "Added" },
    GitSignsChange = { link = "Changed" },
    GitSignsDelete = { link = "Removed" },
  }
end

return M
