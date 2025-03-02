local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors, _)
    ---@type GruvboxHighlights
    -- stylua: ignore
    return {
        MiniSnippetsFinal          = { sp = colors.green,  underline = true },
        MiniSnippetsCurrent        = { sp = colors.yellow, underline = true },
        MiniSnippetsVisited        = { sp = colors.aqua,   underline = true },
        MiniSnippetsUnvisited      = { sp = colors.blue,   underline = true },
        MiniSnippetsCurrentReplace = { sp = colors.orange, underline = true },
    }
end

return M
