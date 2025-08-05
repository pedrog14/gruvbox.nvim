---@type { default: { dark: GruvboxDark, light: GruvboxLight }, get: GruvboxColorsGet, dark: GruvboxDark, light: GruvboxLight, palette: GruvboxPalette }
local M = {}

M.default = setmetatable({}, {
    __index = function(_, k)
        if k == "dark" or k == "light" then
            return require("gruvbox.colors." .. k)
        end
    end,
})

M.get = function(opts, bg)
    bg = bg or vim.o.background

    local palette = require("gruvbox.colors.palette")
    local colors = require("gruvbox.colors." .. bg) --[[@type GruvboxColors]]

    if opts.contrast then
        colors["bg0"] = palette[bg .. "0_" .. opts.contrast]
    end

    opts.color_override(colors)

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
