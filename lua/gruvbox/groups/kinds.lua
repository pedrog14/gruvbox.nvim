local M = {}

---@param colors GruvboxColors
---@return GruvboxHighlights
local kinds = function(colors)
    ---@type GruvboxHighlights
    return {
        File = { fg = colors.fg1 },

        Module = { fg = colors.aqua },
        Namespace = { fg = colors.aqua },
        Package = { fg = colors.aqua },

        Class = { fg = colors.yellow },
        Struct = { fg = colors.yellow },
        Method = { fg = colors.green },
        Property = { fg = colors.blue },
        Field = { fg = colors.blue },
        Constructor = { fg = colors.orange },
        Interface = { fg = colors.yellow },
        Object = { fg = colors.blue },

        Enum = { fg = colors.purple },
        EnumMember = { fg = colors.purple },

        Function = { fg = colors.green },
        Variable = { fg = colors.blue },
        Constant = { fg = colors.purple },
        String = { fg = colors.green },
        Number = { fg = colors.purple },
        Boolean = { fg = colors.purple },
        Array = { fg = colors.orange },

        Key = { fg = colors.purple },
        Null = { fg = colors.purple },
        Event = { fg = colors.orange },
        Operator = { fg = colors.orange },
        TypeParameter = { fg = colors.yellow },
        Text = { fg = colors.green },
        Unit = { fg = colors.green },
        Value = { fg = colors.purple },
        Keyword = { fg = colors.red },
        Snippet = { fg = colors.orange },
        Color = { fg = colors.purple },
        Reference = { fg = colors.blue },
        Folder = { fg = colors.green },
    }
end

---@param colors GruvboxColors
---@param hl GruvboxHighlights?
---@param pattern string?
---@return GruvboxHighlights
M.kinds = function(colors, hl, pattern)
    hl = hl or {}
    for kind, value in pairs(kinds(colors)) do
        local base = "LspKind" .. kind
        if pattern then
            hl[pattern:format(kind)] = { link = base }
        else
            hl[base] = value
        end
    end
    return hl
end

---@type GruvboxHighlightsGet
M.get = function(colors)
    return M.kinds(colors)
end

return M
