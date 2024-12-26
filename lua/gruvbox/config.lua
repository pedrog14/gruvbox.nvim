local M = {}

---@class GruvboxConfig
---@field contrast Contrast?
---@field group_override table<string, HighlightDefinition>?
---@field color_override table<string, string>?
M.default = {
    terminal_colors = true,
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    dim_inactive = false,
    transparent_mode = false,
}

---@type GruvboxConfig
M.opts = nil

M.setup = function()
    local config = M.opts

    local colors = require("gruvbox.colors").get(config)
    local groups = require("gruvbox.groups").get(colors, config)

    for group, hl in pairs(groups) do
        vim.api.nvim_set_hl(0, group, hl)
    end

    if config.terminal_colors then
        M.terminal(colors)
    end
end

---@param colors GruvboxDark | GruvboxLight
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
