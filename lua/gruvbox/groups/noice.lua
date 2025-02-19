local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors, _)
    ---@type GruvboxHighlights
    local ret = {
        NoiceCmdlineIcon = { fg = colors.red },
        NoiceCmdlineIconLua = { fg = colors.blue },

        NoiceCmdlinePopupTitle = { fg = colors.blue },
        NoiceCmdlinePopupTitleSearch = { link = "NoiceCmdlinePopupTitle" },
        NoiceCmdlinePopupTitleLua = { link = "NoiceCmdlinePopupTitle" },
        NoiceCmdlinePopupTitleHelp = { link = "NoiceCmdlinePopupTitle" },
        NoiceCmdlinePopupTitleInput = { link = "NoiceCmdlinePopupTitle" },
        NoiceCmdlinePopupTitleFilter = { link = "NoiceCmdlinePopupTitle" },
        NoiceCmdlinePopupTitleCmdline = { link = "NoiceCmdlinePopupTitle" },
        NoiceCmdlinePopupTitleCalculator = { link = "NoiceCmdlinePopupTitle" },

        NoiceCmdlinePopupBorder = { fg = colors.bg3 },

        NoiceConfirmBorder = { link = "NoiceCmdlinePopupBorder" },
    }
    return require("gruvbox.groups.kinds").kinds(
        colors,
        ret,
        "NoiceCompletionItemKind%s"
    )
end

return M
