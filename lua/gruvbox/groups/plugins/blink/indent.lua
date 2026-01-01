local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
  ---@type GruvboxHighlights
  -- stylua: ignore
  return {
    BlinkIndent      = { fg = colors.bg2 },
    BlinkIndentScope = { fg = colors.orange },

    BlinkIndentRed    = { fg = colors.red },
    BlinkIndentOrange = { fg = colors.orange },
    BlinkIndentYellow = { fg = colors.yellow },
    BlinkIndentGreen  = { fg = colors.green },
    BlinkIndentCyan   = { fg = colors.aqua },
    BlinkIndentBlue   = { fg = colors.blue },
    BlinkIndentViolet = { fg = colors.purple },

    BlinkIndentRedUnderline    = { sp = colors.red, underline = true },
    BlinkIndentOrangeUnderline = { sp = colors.orange, underline = true },
    BlinkIndentYellowUnderline = { sp = colors.yellow, underline = true },
    BlinkIndentGreenUnderline  = { sp = colors.green, underline = true },
    BlinkIndentCyanUnderline   = { sp = colors.aqua, underline = true },
    BlinkIndentBlueUnderline   = { sp = colors.blue, underline = true },
    BlinkIndentVioletUnderline = { sp = colors.purple, underline = true },
  }
end

return M
