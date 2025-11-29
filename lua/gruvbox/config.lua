local M = {}

---@class GruvboxConfig
---@field contrast Contrast?
---@field color_override fun(colors: GruvboxColors)?
---@field group_override fun(hl: GruvboxHighlightsResolved, colors: GruvboxColors)?
---@field style table<Style, vim.api.keyset.highlight>?
M.default = {
    cache = true,
    dim_inactive = false,
    terminal_colors = true,
    transparent = false,

    plugins = {
        all = package.loaded.lazy == nil,
        auto = true,
    },

    style = {
        comment = { italic = true },
        operator = {},
        selection = {},
        sign = {},
        string = {},
    },
}

M.opts = nil ---@type GruvboxConfig

return M
