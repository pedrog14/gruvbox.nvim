local config = require("gruvbox.config")

---@class GruvboxColorsInit
---@field dark GruvboxDark
---@field default { dark: GruvboxDark, light: GruvboxLight }
---@field light GruvboxLight
---@field palette GruvboxPalette
local M = {}

M.default = setmetatable({}, {
    __index = function(_, k)
        if k == "dark" or k == "light" then
            return require("gruvbox.colors." .. k)
        end
    end,
})

---@param bg Background
---@param opts GruvboxConfig
---@return GruvboxColors
M.get = function(bg, opts)
    local palette = require("gruvbox.colors.palette")
    local colors = require("gruvbox.colors." .. bg) ---@type GruvboxColors

    if opts.contrast ~= "medium" then
        colors["bg0"] = palette[bg .. "0_" .. opts.contrast]
    end

    if opts.color_override then
        opts.color_override(colors)
    end

    return colors
end

return setmetatable(M, {
    __index = function(t, k)
        if k == "dark" or k == "light" then
            return t.get(k, config.opts or config.default)
        end
        if k == "palette" then
            return require("gruvbox.colors.palette")
        end
    end,
})
