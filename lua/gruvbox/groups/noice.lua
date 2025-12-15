local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
  ---@type GruvboxHighlights
  -- stylua: ignore
  local ret = {
    NoiceCmdlineIcon    = { fg = colors.red },
    NoiceCmdlineIconLua = { fg = colors.blue },

    NoiceCmdlinePopupTitle           = { fg = colors.blue },
    NoiceCmdlinePopupTitleSearch     = { link = "NoiceCmdlinePopupTitle" },
    NoiceCmdlinePopupTitleLua        = { link = "NoiceCmdlinePopupTitle" },
    NoiceCmdlinePopupTitleHelp       = { link = "NoiceCmdlinePopupTitle" },
    NoiceCmdlinePopupTitleInput      = { link = "NoiceCmdlinePopupTitle" },
    NoiceCmdlinePopupTitleFilter     = { link = "NoiceCmdlinePopupTitle" },
    NoiceCmdlinePopupTitleCmdline    = { link = "NoiceCmdlinePopupTitle" },
    NoiceCmdlinePopupTitleCalculator = { link = "NoiceCmdlinePopupTitle" },
    NoiceCmdlinePopupBorder          = { fg = colors.bg3 },

    NoiceConfirmBorder = { link = "NoiceCmdlinePopupBorder" },

    NoiceFormatProgressTodo = { bg = colors.bg1   , fg = colors.fg1 },
    NoiceFormatProgressDone = { bg = colors.yellow, fg = colors.bg0 },

    NoiceLspProgressTitle   = { link = "Comment" },
    NoiceLspProgressClient  = { fg = colors.green, bold = true },
    NoiceLspProgressSpinner = { fg = colors.purple },
  }

  require("gruvbox.groups.kinds").kinds(colors, ret, "NoiceCompletionItemKind%s")

  return ret
end

return M
