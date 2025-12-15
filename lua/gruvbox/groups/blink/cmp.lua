local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
  ---@type GruvboxHighlights
  -- stylua: ignore
  local ret = {
    BlinkCmpLabel           = { fg = colors.fg1 },
    BlinkCmpLabelMatch      = { fg = colors.bg2, bg = colors.red, reverse = true },
    BlinkCmpLabelDeprecated = { fg = colors.yellow, strikethrough = true },
    BlinkCmpMenuSelection   = { fg = colors.blue, bold = true, reverse = true },
  }

  require("gruvbox.groups.kinds").kinds(colors, ret, "BlinkCmpKind%s")

  return ret
end

return M
