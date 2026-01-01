local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors, opts)
  ---@type GruvboxHighlights
  -- stylua: ignore
  return {
    DiagnosticError = { fg = colors.red },
    DiagnosticWarn  = { fg = colors.yellow },
    DiagnosticInfo  = { fg = colors.blue },
    DiagnosticHint  = { fg = colors.aqua },
    DiagnosticOk    = { fg = colors.green },

    DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
    DiagnosticUnderlineWarn  = { sp = colors.yellow, undercurl = true },
    DiagnosticUnderlineInfo  = { sp = colors.blue, undercurl = true },
    DiagnosticUnderlineHint  = { sp = colors.aqua, undercurl = true },
    DiagnosticUnderlineOk    = { sp = colors.green, undercurl = true },

    DiagnosticSignError = { fg = colors.red, style = "sign" },
    DiagnosticSignWarn  = { fg = colors.yellow, style = "sign" },
    DiagnosticSignInfo  = { fg = colors.blue, style = "sign" },
    DiagnosticSignHint  = { fg = colors.aqua, style = "sign" },
    DiagnosticSignOk    = { fg = colors.green, style = "sign" },

    DiagnosticDeprecated  = { fg = colors.yellow, strikethrough = true },
    DiagnosticUnnecessary = { link = "Comment" },
  }
end

return M
