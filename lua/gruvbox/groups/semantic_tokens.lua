local M = {}

M.get = function(colors, opts)
    ---@type GruvboxHighlights
    return {
        ["@lsp.type.class"] = { link = "@type" },
        ["@lsp.type.comment"] = { link = "@comment" },
        ["@lsp.type.decorator"] = { link = "@macro" },
        ["@lsp.type.enum"] = { link = "@type" },
        ["@lsp.type.enumMember"] = { link = "@constant" },
        ["@lsp.type.event"] = { link = "@type" },
        ["@lsp.type.function"] = { link = "@function" },
        ["@lsp.type.interface"] = { link = "@type" },
        ["@lsp.type.keyword"] = { link = "@keyword" },
        ["@lsp.type.macro"] = { link = "@function.macro" },
        ["@lsp.type.method"] = { link = "@function" },
        ["@lsp.type.modifier"] = { link = "@keyword.modifier" },
        ["@lsp.type.namespace"] = { link = "@module" },
        ["@lsp.type.number"] = { link = "@number" },
        ["@lsp.type.operator"] = { link = "@operator" },
        ["@lsp.type.parameter"] = { link = "@variable.parameter" },
        ["@lsp.type.property"] = { link = "@property" },
        ["@lsp.type.regexp"] = { link = "@string.regexp" },
        ["@lsp.type.string"] = { link = "@string" },
        ["@lsp.type.struct"] = { link = "@type" },
        ["@lsp.type.type"] = { link = "@type" },
        ["@lsp.type.typeParameter"] = { link = "@type.definition" },
        ["@lsp.type.variable"] = { link = "@variable" },

        -- ["@lsp.mod.abstract"] = {},
        -- ["@lsp.mod.async"] = {},
        -- ["@lsp.mod.declaration"] = {},
        -- ["@lsp.mod.defaultLibrary"] = {},
        -- ["@lsp.mod.definition"] = {},
        -- ["@lsp.mod.deprecated"] = {},
        -- ["@lsp.mod.documentation"] = {},
        -- ["@lsp.mod.modification"] = {},
        -- ["@lsp.mod.readonly"] = {},
        -- ["@lsp.mod.static"] = {},
    }
end

return M
