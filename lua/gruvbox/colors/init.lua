local M = {} --[[@type { get: fun(opts: GruvboxConfig, bg?: "dark"|"light"): GruvboxColors; dark: GruvboxColors; light: GruvboxColors; palette: GruvboxPalette }]]

setmetatable(M, {
    __index = function(_, k)
        if k == "dark" or k == "light" then
            local opts = require("gruvbox.config").opts
            return require("gruvbox.colors").get(opts, k)
        end
        return require("gruvbox.colors." .. k)
    end,
})

M.get = function(opts, bg)
    bg = bg == nil and vim.o.background or bg
    local fg = bg == "dark" and "light" or "dark"
    local variant = bg == "dark" and "bright" or "faded"

    local palette = require("gruvbox.colors.palette")

    ---@class GruvboxColors
    -- stylua: ignore
    local colors = {
        bg0            = palette[bg .. 0],
        bg1            = palette[bg .. 1],
        bg2            = palette[bg .. 2],
        bg3            = palette[bg .. 3],
        bg4            = palette[bg .. 4],

        gray           = palette["gray"],

        fg0            = palette[fg .. 0],
        fg1            = palette[fg .. 1],
        fg2            = palette[fg .. 2],
        fg3            = palette[fg .. 3],
        fg4            = palette[fg .. 4],

        red            = palette[variant .. "_red"],
        orange         = palette[variant .. "_orange"],
        yellow         = palette[variant .. "_yellow"],
        green          = palette[variant .. "_green"],
        aqua           = palette[variant .. "_aqua"],
        blue           = palette[variant .. "_blue"],
        purple         = palette[variant .. "_purple"],

        neutral_red    = palette["neutral_red"],
        neutral_orange = palette["neutral_orange"],
        neutral_yellow = palette["neutral_yellow"],
        neutral_green  = palette["neutral_green"],
        neutral_aqua   = palette["neutral_aqua"],
        neutral_blue   = palette["neutral_blue"],
        neutral_purple = palette["neutral_purple"],

        none           = palette["none"],
    }

    if opts.contrast then
        colors["bg0"] = palette[bg .. "0_" .. opts.contrast]
    end

    for color, value in pairs(opts.color_override) do
        colors[color] = value
    end

    return colors
end

return M
