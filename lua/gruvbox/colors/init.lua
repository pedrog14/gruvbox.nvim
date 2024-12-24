---@class GruvboxColors
---@field palette GruvboxPalette
---@field dark GruvboxDark
---@field light GruvboxLight
local M = {}

---@return GruvboxLight | GruvboxDark
M.get = function(config)
    local bg = vim.o.background

    local palette = require("gruvbox.colors").palette
    local colors = require("gruvbox.colors." .. bg)

    if config.contrast then
        colors.bg0 = palette[bg .. "0_" .. config.contrast]
    end

    if config.color_override then
        colors = vim.tbl_extend("force", colors, config.color_override)
    end

    return colors
end

M.setup = function()
    local config = require("gruvbox.config").opts

    local colors = require("gruvbox.colors").get(config)
    local groups = require("gruvbox.groups").get(colors, config)

    for group, hl in pairs(groups) do
        vim.api.nvim_set_hl(0, group, hl)
    end

    if config.terminal_colors then
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
end

setmetatable(M, {
    __index = function(_, k)
        return require("gruvbox.colors." .. k)
    end,
})

return M
