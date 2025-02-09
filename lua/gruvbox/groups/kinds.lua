local M = {}

---@param colors GruvboxColors
---@return GruvboxHighlights
local kinds = function(colors)
    ---@type GruvboxHighlights
    -- stylua: ignore
    return {
        Array         = { fg = colors.orange },
        Boolean       = { fg = colors.purple },
        Class         = { fg = colors.orange },
        Color         = { fg = colors.orange },
        Constant      = { fg = colors.purple },
        Constructor   = { fg = colors.orange },
        Enum          = { fg = colors.yellow },
        EnumMember    = { fg = colors.purple },
        Event         = { fg = colors.yellow },
        Field         = { fg = colors.blue   },
        File          = { fg = colors.fg3    },
        Folder        = { fg = colors.green  },
        Function      = { fg = colors.green  },
        Interface     = { fg = colors.yellow },
        Key           = { fg = colors.blue   },
        Keyword       = { fg = colors.red    },
        Method        = { fg = colors.green  },
        Module        = { fg = colors.red    },
        Namespace     = { fg = colors.red    },
        Null          = { fg = colors.purple },
        Number        = { fg = colors.purple },
        Object        = { fg = colors.blue   },
        Operator      = { fg = colors.orange },
        Package       = { fg = colors.red    },
        Property      = { fg = colors.blue   },
        Reference     = { fg = colors.yellow },
        Snippet       = { fg = colors.green  },
        String        = { fg = colors.green  },
        Struct        = { fg = colors.yellow },
        Unit          = { fg = colors.yellow },
        Text          = { fg = colors.orange },
        TypeParameter = { fg = colors.yellow },
        Variable      = { fg = colors.blue   },
        Value         = { fg = colors.purple },
    }
end

---@param colors GruvboxColors
---@param hl? GruvboxHighlights
---@param pattern? string
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
M.get = function(colors, _)
    return M.kinds(colors)
end

return M
