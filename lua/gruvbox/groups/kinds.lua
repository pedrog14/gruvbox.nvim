local M = {}

---@param colors GruvboxColors
---@return GruvboxHighlights
local kinds = function(colors)
    -- stylua: ignore
    ---@type GruvboxHighlights
    return {
        Array         = { fg = colors.yellow },
        Boolean       = { fg = colors.purple },
        Class         = { fg = colors.yellow },
        Color         = { fg = colors.purple },
        Constant      = { fg = colors.purple },
        Constructor   = { fg = colors.green  },
        Enum          = { fg = colors.yellow },
        EnumMember    = { fg = colors.purple },
        Event         = { fg = colors.yellow },
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
        Reference     = { fg = colors.yellow },
        Snippet       = { fg = colors.green  },
        String        = { fg = colors.green  },
        Struct        = { fg = colors.yellow },
        Unit          = { fg = colors.yellow },
        Text          = { fg = colors.green  },
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
