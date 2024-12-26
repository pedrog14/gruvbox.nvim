---@class GruvboxColors
---@field palette GruvboxPalette
---@field dark GruvboxDark
---@field light GruvboxLight
local M = {}

---@return GruvboxDark | GruvboxLight
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

setmetatable(M, {
    __index = function(_, k)
        return require("gruvbox.colors." .. k)
    end,
})

return M
