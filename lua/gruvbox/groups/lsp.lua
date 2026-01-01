local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
  ---@type GruvboxHighlights
  -- stylua: ignore
  return {
    LspReferenceText   = { bg = colors.bg2 },
    LspReferenceRead   = { bg = colors.bg2 },
    LspReferenceWrite  = { bg = colors.bg2 },
    LspReferenceTarget = { bg = colors.bg2 },

    LspInlayHint = { fg = colors.gray, bg = colors.bg1 },

    LspCodeLens          = { fg = colors.gray },
    LspCodeLensSeparator = { link = "LspCodeLens" },

    LspSignatureActiveParameter = { bg = colors.bg2, bold = true },
  }
end

return M
