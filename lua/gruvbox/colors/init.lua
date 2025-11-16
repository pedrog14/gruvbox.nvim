---@class GruvboxColorsInit
---@field dark GruvboxDark
---@field light GruvboxLight
---@field palette GruvboxPalette
local M = {}

---@type { dark: GruvboxDark, light: GruvboxLight }
M.default = setmetatable({}, {
    __index = function(_, k)
        if k == "dark" or k == "light" then
            return require("gruvbox.colors." .. k)
        end
    end,
})

---@param opts GruvboxConfig
---@param bg? Background
---@return GruvboxColors
M.get = function(opts, bg)
    bg = bg or vim.api.nvim_get_option_value("background", {})

    local palette = require("gruvbox.colors.palette")
    local colors = require("gruvbox.colors." .. bg) ---@type GruvboxColors

    if opts.contrast then
        colors["bg0"] = palette[bg .. "0_" .. opts.contrast]
    end

    if opts.color_override then
        opts.color_override(colors)
    end

    return colors
end

return setmetatable(M, {
    __index = function(_, k)
        if k == "dark" or k == "light" then
            local opts = require("gruvbox.config").opts
            return M.get(opts, k)
        end
        if k == "palette" then
            return require("gruvbox.colors.palette")
        end
    end,
})
