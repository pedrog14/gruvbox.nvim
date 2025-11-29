local config = require("gruvbox.config")

local M = {}

---@param opts GruvboxConfig?
M.setup = function(opts)
    config.opts = vim.tbl_deep_extend("force", config.default, opts or {})
end

M.load = function()
    if vim.g.colors_name then
        vim.cmd.hi("clear")
    end

    vim.api.nvim_set_var("colors_name", "gruvbox")
    vim.api.nvim_set_option_value("termguicolors", true, {})

    local opts = config.opts or config.default

    local colors = require("gruvbox.colors").get(opts)
    local groups = require("gruvbox.groups").get(colors, opts)

    for group, hl in pairs(groups) do
        vim.api.nvim_set_hl(0, group, hl)
    end

    if opts.terminal_colors then
        M.terminal(colors)
    end
end

---@param colors GruvboxColors
-- stylua: ignore
M.terminal = function(colors)
    vim.g.terminal_color_0  = colors.bg0
    vim.g.terminal_color_8  = colors.gray

    vim.g.terminal_color_1  = colors.neutral_red
    vim.g.terminal_color_9  = colors.red

    vim.g.terminal_color_2  = colors.neutral_green
    vim.g.terminal_color_10 = colors.green

    vim.g.terminal_color_3  = colors.neutral_yellow
    vim.g.terminal_color_11 = colors.yellow

    vim.g.terminal_color_4  = colors.neutral_blue
    vim.g.terminal_color_12 = colors.blue

    vim.g.terminal_color_5  = colors.neutral_purple
    vim.g.terminal_color_13 = colors.purple

    vim.g.terminal_color_6  = colors.neutral_aqua
    vim.g.terminal_color_14 = colors.aqua

    vim.g.terminal_color_7  = colors.fg4
    vim.g.terminal_color_15 = colors.fg1
end

return M
