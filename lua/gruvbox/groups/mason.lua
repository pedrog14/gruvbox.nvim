local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
  ---@type GruvboxHighlights
  -- stylua: ignore
  return {
    MasonNormal  = { link = "NormalFloat" },
    MasonHeading = { bold = true },
    MasonMuted   = { fg = colors.gray },
    MasonLink    = { fg = colors.blue, underline = true },

    MasonHeader          = { fg = colors.bg0, bg = colors.orange, bold = true },
    MasonHeaderSecondary = { fg = colors.bg0, bg = colors.blue, bold = true },

    MasonHighlight          = { fg = colors.orange },
    MasonHighlightSecondary = { fg = colors.blue },

    MasonHighlightBlock          = { fg = colors.bg0, bg = colors.orange },
    MasonHighlightBlockSecondary = { fg = colors.bg0, bg = colors.blue },

    MasonHighlightBlockBold          = { fg = colors.bg0, bg = colors.orange, bold = true },
    MasonHighlightBlockBoldSecondary = { fg = colors.bg0, bg = colors.blue, bold = true },

    MasonMutedBlock     = { fg = colors.fg1, bg = colors.bg2 },
    MasonMutedBlockBold = { fg = colors.fg1, bg = colors.bg2, bold = true },
  }
end

return M
