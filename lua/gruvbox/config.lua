local M = {}

---@class GruvboxConfig
---@field color_override fun(colors: GruvboxColors)
---@field group_override fun(highlights: table<string, vim.api.keyset.highlight>, colors: GruvboxColors)
M.default = {
    cache = true,
    contrast = nil, ---@type GruvboxContrast
    dim_inactive = false,
    terminal_colors = true,
    transparent = false,

    color_override = function(colors) end,
    group_override = function(highlights, colors) end,

    plugins = {
        all = package.loaded.lazy == nil,
        auto = true,
    },

    style = { ---@type table<string, vim.api.keyset.highlight>
        comments = { italic = true },
        indent = {},
        operators = {},
        selection = {},
        signs = {},
        strings = {},
    },
}

M.opts = nil ---@type GruvboxConfig

return M
