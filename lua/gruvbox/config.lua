local M = {}

---@class GruvboxConfig
---@field contrast Contrast?
---@field color_override fun(colors: GruvboxColors)?
---@field group_override fun(hl: GruvboxHighlightsResolved, colors: GruvboxColors)?
M.default = {
    cache = true,
    dim_inactive = false,
    terminal_colors = true,
    transparent = false,

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
