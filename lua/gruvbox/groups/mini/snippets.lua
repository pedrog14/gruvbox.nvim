local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors, opts)
    local style = opts.style
    ---@type GruvboxHighlights
    return {
        MiniSnippetsFinal = { sp = colors.green, underline = style.underline },
        MiniSnippetsCurrent = {
            sp = colors.yellow,
            underline = style.underline,
        },
        MiniSnippetsVisited = { sp = colors.aqua, underline = style.underline },
        MiniSnippetsUnvisited = {
            sp = colors.blue,
            underline = style.underline,
        },
        MiniSnippetsCurrentReplace = {
            sp = colors.orange,
            underline = style.underline,
        },
    }
end

return M
