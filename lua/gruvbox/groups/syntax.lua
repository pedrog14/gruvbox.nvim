local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
  ---@type GruvboxHighlights
  -- stylua: ignore
  return {
    Comment = { fg = colors.gray, style = "comment" },

    Constant  = { fg = colors.purple },
    String    = { fg = colors.green, style = "string" },
    Character = { fg = colors.purple, style = "string" },
    Number    = { fg = colors.purple },
    Boolean   = { fg = colors.purple },
    Float     = { fg = colors.purple },

    Identifier = { fg = colors.blue },
    Function   = { fg = colors.green, bold = true },

    Statement   = { fg = colors.red },
    Conditional = { fg = colors.red },
    Repeat      = { fg = colors.red },
    Label       = { fg = colors.red },
    Operator    = { fg = colors.orange, style = "operator" },
    Keyword     = { fg = colors.red },
    Exception   = { fg = colors.red },

    PreProc   = { fg = colors.aqua },
    Include   = { fg = colors.aqua },
    Define    = { fg = colors.aqua },
    Macro     = { fg = colors.aqua },
    PreCondit = { fg = colors.aqua },

    Type         = { fg = colors.yellow },
    StorageClass = { fg = colors.yellow },
    Structure    = { fg = colors.yellow },
    Typedef      = { fg = colors.yellow },

    Special        = { fg = colors.orange },
    SpecialChar    = { fg = colors.orange },
    Tag            = { fg = colors.green },
    Delimiter      = { fg = colors.orange },
    SpecialComment = { fg = colors.orange },
    Debug          = { fg = colors.orange },

    Underlined = { underline = true },

    Ignore = {},

    Error = { fg = colors.red, bold = true },

    Todo = { fg = colors.bg0, bg = colors.yellow, bold = true },

    Added   = { fg = colors.green },
    Changed = { fg = colors.aqua },
    Removed = { fg = colors.red },
  }
end

return M
