local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
    -- stylua: ignore
    ---@type GruvboxHighlights
    return {
        MiniSnippetsCurrentReplace = { sp = colors.orange, underline = true },
        MiniSnippetsCurrent        = { sp = colors.yellow, underline = true },
        MiniSnippetsFinal          = { sp = colors.green,  underline = true },
        MiniSnippetsVisited        = { sp = colors.aqua,   underline = true },
        MiniSnippetsUnvisited      = { sp = colors.blue,   underline = true },
    }
end

return M
