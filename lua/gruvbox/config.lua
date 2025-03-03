local M = {}

M.default = { --[[@class GruvboxConfig]]
    cache = true,
    contrast = nil, --[[@type GruvboxContrast]]
    dim_inactive = false,
    terminal_colors = true,
    transparent = false,

    ---@param colors GruvboxColors
    color_override = function(colors) end,

    ---@param highlights table<string, vim.api.keyset.highlight>
    ---@param colors GruvboxColors
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
    },
}

M.opts = nil --[[@type GruvboxConfig]]

return M
