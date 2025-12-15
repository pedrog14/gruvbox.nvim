local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
  ---@type GruvboxHighlights
  -- stylua: ignore
  return {
    MiniIconsGrey = { fg = colors.gray },

    MiniIconsRed    = { fg = colors.red },
    MiniIconsOrange = { fg = colors.orange },
    MiniIconsYellow = { fg = colors.yellow },
    MiniIconsGreen  = { fg = colors.green },
    MiniIconsCyan   = { fg = colors.aqua },
    MiniIconsAzure  = { fg = colors.blue },
    MiniIconsBlue   = { fg = colors.blue },
    MiniIconsPurple = { fg = colors.purple },
  }
end

return M
