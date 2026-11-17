local M = {}

---@type GruvboxHighlightsGet
M.get = function()
  ---@type GruvboxHighlights
  -- stylua: ignore
  return {
    LuaLineDiffAdd    = { link = "Added" },
    LuaLineDiffChange = { link = "Changed" },
    LuaLineDiffDelete = { link = "Removed" },
  }
end

return M
