---@type GruvboxGroup
local M = {}

M.get = function(colors, opts)
    local style = opts.style
    ---@type GruvboxHighlights
    return {
        ["@variable"] = { fg = colors.fg1 },
        ["@variable.builtin"] = { link = "Special" },
        ["@variable.parameter"] = { link = "Identifier" },
        ["@variable.parameter.builtin"] = { link = "Special" },
        ["@variable.member"] = { link = "Identifier" },

        ["@constant"] = { link = "Constant" },
        ["@constant.builtin"] = { link = "Special" },
        ["@constant.macro"] = { link = "Macro" },

        ["@module"] = { link = "Label" },
        ["@module.builtin"] = { link = "Special" },
        ["@label"] = { link = "Label" },

        ["@string"] = { link = "String" },
        ["@string.documentation"] = { link = "String" },
        ["@string.regexp"] = { link = "String" },
        ["@string.escape"] = { link = "String" },
        ["@string.special"] = { link = "Special" },
        ["@string.special.symbol"] = { link = "Special" },
        ["@string.special.path"] = { link = "Special" },
        ["@string.special.url"] = {
            fg = colors.blue,
            underline = style.underline,
        },

        ["@character"] = { link = "Character" },
        ["@character.special"] = { link = "SpecialChar" },

        ["@boolean"] = { link = "Boolean" },
        ["@number"] = { link = "Number" },
        ["@number.float"] = { link = "Number" },

        ["@type"] = { link = "Type" },
        ["@type.builtin"] = { link = "Special" },
        ["@type.definition"] = { link = "Typedef" },

        ["@attribute"] = { link = "Macro" },
        ["@attribute.builtin"] = { link = "Special" },
        ["@property"] = { link = "Identifier" },

        ["@function"] = { link = "Function" },
        ["@function.builtin"] = { link = "Special" },
        ["@function.call"] = { link = "Function" },
        ["@function.macro"] = { link = "Macro" },

        ["@function.method"] = { link = "Function" },
        ["@function.method.call"] = { link = "Function" },

        ["@constructor"] = { link = "Special" },
        ["@operator"] = { link = "Operator" },

        ["@keyword"] = { link = "Keyword" },
        ["@keyword.coroutine"] = { link = "Keyword" },
        ["@keyword.function"] = { link = "Keyword" },
        ["@keyword.operator"] = { link = "Keyword" },
        ["@keyword.import"] = { link = "Keyword" },
        ["@keyword.type"] = { link = "Keyword" },
        ["@keyword.modifier"] = { link = "Keyword" },
        ["@keyword.repeat"] = { link = "Keyword" },
        ["@keyword.return"] = { link = "Keyword" },
        ["@keyword.debug"] = { link = "Keyword" },
        ["@keyword.exception"] = { link = "Keyword" },

        ["@keyword.conditional"] = { link = "Keyword" },
        ["@keyword.conditional.ternary"] = { link = "Keyword" },

        ["@keyword.directive"] = { link = "PreProc" },
        ["@keyword.directive.define"] = { link = "PreProc" },

        ["@punctuation.delimiter"] = { link = "SpecialChar" },
        ["@punctuation.bracket"] = { link = "SpecialChar" },
        ["@punctuation.special"] = { link = "SpecialChar" },

        ["@comment"] = { link = "Comment" },
        ["@comment.documentation"] = { link = "Comment" },

        ["@comment.error"] = {
            fg = colors.bg0,
            bg = colors.red,
            bold = style.bold,
        },
        ["@comment.warning"] = {
            fg = colors.bg0,
            bg = colors.yellow,
            bold = style.bold,
        },
        ["@comment.todo"] = {
            fg = colors.bg0,
            bg = colors.aqua,
            bold = style.bold,
        },
        ["@comment.note"] = {
            fg = colors.bg0,
            bg = colors.blue,
            bold = style.bold,
        },

        ["@markup.strong"] = { bold = style.bold },
        ["@markup.italic"] = { italic = style.italic },
        ["@markup.strikethrough"] = { strikethrough = style.strikethrough },
        ["@markup.underline"] = { underline = style.underline },

        ["@markup.heading"] = { link = "Title" },
        ["@markup.heading.1"] = { link = "Title" },
        ["@markup.heading.2"] = { link = "Title" },
        ["@markup.heading.3"] = { link = "Title" },
        ["@markup.heading.4"] = { link = "Title" },
        ["@markup.heading.5"] = { link = "Title" },
        ["@markup.heading.6"] = { link = "Title" },

        ["@markup.quote"] = { link = "String" },
        ["@markup.math"] = { link = "Number" },

        ["@markup.link"] = { link = "Structure" },
        ["@markup.link.label"] = { link = "Special" },
        ["@markup.link.url"] = { link = "@string.special.url" },

        ["@markup.raw"] = { link = "String" },
        ["@markup.raw.block"] = { link = "String" },

        ["@markup.list"] = { link = "Delimiter" },
        ["@markup.list.checked"] = { fg = colors.green },
        ["@markup.list.unchecked"] = { fg = colors.red },

        ["@diff.plus"] = { link = "Added" },
        ["@diff.minus"] = { link = "Removed" },
        ["@diff.delta"] = { link = "Changed" },

        ["@tag"] = { link = "Tag" },
        ["@tag.builtin"] = { link = "Special" },
        ["@tag.attribute"] = { link = "Macro" },
        ["@tag.delimiter"] = { link = "Delimiter" },
    }
end

return M
