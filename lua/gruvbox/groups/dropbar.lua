local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
  ---@type GruvboxHighlights
  -- stylua: ignore
  local ret = {}

  require("gruvbox.groups.kinds").kinds(colors, ret, "DropBarIconKind%s")

  return ret
end

return M
