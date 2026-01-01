local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
  ---@type GruvboxHighlights
  -- stylua: ignore
  local ret = {
    BlinkCmpLabelMatch      = { fg = colors.red },
    BlinkCmpLabelDeprecated = { fg = colors.yellow, strikethrough = true },
  }

  require("gruvbox.groups.kinds").kinds(colors, ret, "BlinkCmpKind%s")

  return ret
end

return M
