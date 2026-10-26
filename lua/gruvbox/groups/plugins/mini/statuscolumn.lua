local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors, _)
  ---@type GruvboxHighlights
  -- stylua: ignore
  return {
    MiniStatuscolumnDim       = { fg = colors.bg2 },
    MiniStatuscolumnDimCursor = { link = "MiniStatuscolumnDim" },
    MiniStatuscolumnSep       = { link = "LineNr" },
    MiniStatuscolumnSepCursor = { link = "CursorLineNr" }
  }
end

return M
