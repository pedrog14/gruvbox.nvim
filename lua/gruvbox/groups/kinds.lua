local M = {}

---@param colors GruvboxColors
---@return GruvboxHighlights
local kinds = function(colors)
    ---@type GruvboxHighlights
    -- stylua: ignore
    return {
        Array         = { fg = colors.orange },
        Boolean       = { fg = colors.purple },
        Class         = { fg = colors.yellow },
        Color         = { fg = colors.purple },
        Constant      = { fg = colors.purple },
        Constructor   = { fg = colors.orange },
        Enum          = { fg = colors.yellow },
        EnumMember    = { fg = colors.purple },
        Event         = { fg = colors.orange },
        Field         = { fg = colors.blue   },
        File          = { fg = colors.fg1    },
        Folder        = { fg = colors.green  },
        Function      = { fg = colors.green  },
        Interface     = { fg = colors.yellow },
        Key           = { fg = colors.purple },
        Keyword       = { fg = colors.red    },
        Method        = { fg = colors.green  },
        Module        = { fg = colors.aqua   },
        Namespace     = { fg = colors.aqua   },
        Null          = { fg = colors.purple },
        Number        = { fg = colors.purple },
        Object        = { fg = colors.blue   },
        Operator      = { fg = colors.orange },
        Package       = { fg = colors.aqua   },
        Property      = { fg = colors.blue   },
        Reference     = { fg = colors.blue   },
        Snippet       = { fg = colors.orange },
        String        = { fg = colors.green  },
        Struct        = { fg = colors.yellow },
        Text          = { fg = colors.green  },
        TypeParameter = { fg = colors.yellow },
        Unit          = { fg = colors.green  },
        Value         = { fg = colors.purple },
        Variable      = { fg = colors.blue   },
    }
end

---@param colors GruvboxColors
---@param hl GruvboxHighlights?
---@param pattern string?
---@return GruvboxHighlights
M.kinds = function(colors, hl, pattern)
    hl = hl or {}
    pattern = pattern or "LspKind%s"
    for kind, value in pairs(kinds(colors)) do
        hl[pattern:format(kind)] = value
    end
    return hl
end

---@type GruvboxHighlightsGet
M.get = function(colors)
    return M.kinds(colors)
end

return M
