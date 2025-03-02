local M = {}

M.default = { --[[@class GruvboxConfig]]
    cache = true,
    contrast = nil, --[[@type GruvboxContrast]]
    dim_inactive = false,
    terminal_colors = true,
    transparent = false,

    ---@type fun(colors: GruvboxColors)
    color_override = function(colors) end,

    ---@type fun(highlights: table<string, vim.api.keyset.highlight>, colors: GruvboxColors)
    group_override = function(highlights, colors) end,

    plugins = {
        all = package.loaded.lazy == nil,
        auto = true,
    },

    style = { --[[@type table<string, vim.api.keyset.highlight>]]
        comments = { italic = true },
        indent = {},
        operators = {},
        selection = {},
        signs = {},
        strings = {},
        tabline = {},
    },
}

M.opts = nil --[[@type GruvboxConfig]]

return M
