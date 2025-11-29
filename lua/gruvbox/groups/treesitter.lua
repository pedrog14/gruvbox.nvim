local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
    ---@type GruvboxHighlights
    -- stylua: ignore
    return {
        ["@variable"]                    = { fg = colors.fg1 },
        ["@variable.builtin"]            = { link = "Special" },
        ["@variable.parameter"]          = { link = "Identifier" },
        ["@variable.parameter.builtin"]  = { link = "Special" },
        ["@variable.member"]             = { link = "Identifier" },

        ["@constant"]                    = { link = "Constant" },
        ["@constant.builtin"]            = { link = "Special" },
        ["@constant.macro"]              = { link = "Macro" },

        ["@module"]                      = { link = "Include" },
        ["@module.builtin"]              = { link = "Special" },
        ["@label"]                       = { link = "Label" },

        ["@string"]                      = { link = "String" },
        ["@string.documentation"]        = { link = "String" },
        ["@string.regexp"]               = { link = "Special" },
        ["@string.escape"]               = { link = "Special" },
        ["@string.special"]              = { link = "Special" },
        ["@string.special.symbol"]       = { link = "Identifier" },
        ["@string.special.path"]         = { link = "Underlined" },
        ["@string.special.url"]          = { fg = colors.blue, underline = true },

        ["@character"]                   = { link = "Character" },
        ["@character.special"]           = { link = "SpecialChar" },

        ["@boolean"]                     = { link = "Boolean" },
        ["@number"]                      = { link = "Number" },
        ["@number.float"]                = { link = "Number" },

        ["@type"]                        = { link = "Type" },
        ["@type.builtin"]                = { link = "Special" },
        ["@type.definition"]             = { link = "Typedef" },

        ["@attribute"]                   = { link = "Macro" },
        ["@attribute.builtin"]           = { link = "Special" },
        ["@property"]                    = { link = "Identifier" },

        ["@function"]                    = { link = "Function" },
        ["@function.builtin"]            = { link = "Special" },
        ["@function.call"]               = { link = "Function" },
        ["@function.macro"]              = { link = "Macro" },

        ["@function.method"]             = { link = "Function" },
        ["@function.method.call"]        = { link = "Function" },

        ["@constructor"]                 = { link = "Special" },
        ["@operator"]                    = { link = "Operator" },

        ["@keyword"]                     = { link = "Keyword" },
        ["@keyword.coroutine"]           = { link = "Keyword" },
        ["@keyword.function"]            = { link = "Keyword" },
        ["@keyword.operator"]            = { link = "Operator" },
        ["@keyword.import"]              = { link = "Include" },
        ["@keyword.type"]                = { link = "Type" },
        ["@keyword.modifier"]            = { link = "Keyword" },
        ["@keyword.repeat"]              = { link = "Repeat" },
        ["@keyword.return"]              = { link = "Keyword" },
        ["@keyword.debug"]               = { link = "Debug" },
        ["@keyword.exception"]           = { link = "Exception" },

        ["@keyword.conditional"]         = { link = "Conditional" },
        ["@keyword.conditional.ternary"] = { link = "Operator" },

        ["@keyword.directive"]           = { link = "PreProc" },
        ["@keyword.directive.define"]    = { link = "Define" },

        ["@punctuation.delimiter"]       = { link = "Delimiter" },
        ["@punctuation.bracket"]         = { link = "Delimiter" },
        ["@punctuation.special"]         = { link = "Special" },

        ["@comment"]                     = { link = "Comment" },
        ["@comment.documentation"]       = { link = "Comment" },

        ["@comment.error"]               = { fg = colors.red, bold = true },
        ["@comment.warning"]             = { fg = colors.yellow, bold = true },
        ["@comment.todo"]                = { fg = colors.aqua, bold = true },
        ["@comment.note"]                = { fg = colors.blue, bold = true },

        ["@markup.strong"]               = { bold = true },
        ["@markup.italic"]               = { italic = true },
        ["@markup.strikethrough"]        = { strikethrough = true },
        ["@markup.underline"]            = { underline = true },

        ["@markup.heading"]              = { link = "Title" },
        ["@markup.heading.1"]            = { link = "Title" },
        ["@markup.heading.2"]            = { link = "Title" },
        ["@markup.heading.3"]            = { link = "Title" },
        ["@markup.heading.4"]            = { link = "Title" },
        ["@markup.heading.5"]            = { link = "Title" },
        ["@markup.heading.6"]            = { link = "Title" },

        ["@markup.quote"]                = { link = "String" },
        ["@markup.math"]                 = { link = "Special" },

        ["@markup.link"]                 = { link = "Special" },
        ["@markup.link.label"]           = { link = "Identifier" },
        ["@markup.link.url"]             = { link = "@string.special.url" },

        ["@markup.raw"]                  = { link = "String" },
        ["@markup.raw.block"]            = { link = "String" },

        ["@markup.list"]                 = { link = "Delimiter" },
        ["@markup.list.checked"]         = { fg = colors.green },
        ["@markup.list.unchecked"]       = { fg = colors.yellow },

        ["@diff.plus"]                   = { link = "Added" },
        ["@diff.minus"]                  = { link = "Removed" },
        ["@diff.delta"]                  = { link = "Changed" },

        ["@tag"]                         = { link = "Tag" },
        ["@tag.builtin"]                 = { link = "Special" },
        ["@tag.attribute"]               = { link = "Macro" },
        ["@tag.delimiter"]               = { link = "Delimiter" },
    }
end

return M
