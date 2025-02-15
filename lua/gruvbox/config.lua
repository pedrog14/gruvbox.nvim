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

    style = {
        bold          = true,
        italic        = true,
        reverse       = true,
        strikethrough = true,
        undercurl     = true,
        underline     = true,

        comments      = {}, --[[@type vim.api.keyset.highlight]]
        indent        = {}, --[[@type vim.api.keyset.highlight]]
        operators     = {}, --[[@type vim.api.keyset.highlight]]
        selection     = {}, --[[@type vim.api.keyset.highlight]]
        signs         = {}, --[[@type vim.api.keyset.highlight]]
        strings       = {}, --[[@type vim.api.keyset.highlight]]
        tabline       = {}, --[[@type vim.api.keyset.highlight]]
    },
}

M.default.style.comments = { italic = M.default.style.italic }

---@type GruvboxConfig
M.opts = nil

return M
