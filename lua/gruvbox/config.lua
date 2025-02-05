local M = {}

---@class GruvboxConfig
M.default = {
    cache = true,
    contrast = nil, --[[@type GruvboxContrast]]
    dim_inactive = false,
    terminal_colors = true,
    transparent_mode = false,
    color_override = {}, --[[@type GruvboxColors]]
    group_override = {}, --[[@type GruvboxHighlights]]
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

M.setup = function()
    local opts = M.opts

    local bg = vim.o.background

    local colors = require("gruvbox.colors")[bg] --[[@as GruvboxColors]]
    local groups = require("gruvbox.groups").get(colors, opts)

    for group, hl in pairs(groups) do
        vim.api.nvim_set_hl(0, group, hl)
    end

    if opts.terminal_colors then
        M.terminal(colors)
    end
end

---@param colors GruvboxColors
M.terminal = function(colors)
    vim.g.terminal_color_0 = colors.bg0
    vim.g.terminal_color_8 = colors.gray

    vim.g.terminal_color_1 = colors.neutral_red
    vim.g.terminal_color_9 = colors.red

    vim.g.terminal_color_2 = colors.neutral_green
    vim.g.terminal_color_10 = colors.green

    vim.g.terminal_color_3 = colors.neutral_yellow
    vim.g.terminal_color_11 = colors.yellow

    vim.g.terminal_color_4 = colors.neutral_blue
    vim.g.terminal_color_12 = colors.blue

    vim.g.terminal_color_5 = colors.neutral_purple
    vim.g.terminal_color_13 = colors.purple

    vim.g.terminal_color_6 = colors.neutral_aqua
    vim.g.terminal_color_14 = colors.aqua

    vim.g.terminal_color_7 = colors.fg4
    vim.g.terminal_color_15 = colors.fg1
end

return M
