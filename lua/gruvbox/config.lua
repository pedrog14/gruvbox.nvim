local M = {}

M.default = { --[[@class GruvboxConfig]]
    cache = true,
    contrast = nil, --[[@type GruvboxContrast]]
    dim_inactive = false,
    terminal_colors = true,
    transparent_mode = false,
    color_override = {}, --[[@type GruvboxColors]]
    group_override = {}, --[[@type table<string, vim.api.keyset.highlight>]]
    plugins = {
        all = package.loaded.lazy == nil,
        auto = true,
    },

    -- stylua: ignore

    style = { --[[@type table<string, vim.api.keyset.highlight>]]
        comments      = { italic = true },
        indent        = {},
        operators     = {},
        selection     = {},
        signs         = {},
        strings       = {},
        tabline       = {},
    },
}

M.opts = nil --[[@type GruvboxConfig]]

return M
