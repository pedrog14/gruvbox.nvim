local M = {}

---@class GruvboxConfig
---@field contrast Contrast?
---@field overrides table<string, HighlightDefinition>?
---@field palette_overrides table<string, string>?
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
    contrast = "",
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    overrides = nil,
    palette_overrides = nil,
    dim_inactive = false,
    transparent_mode = false,
}

---@type GruvboxConfig
M.opts = nil

---@param opts GruvboxConfig?
M.setup = function(opts)
    M.opts = vim.tbl_deep_extend("force", M.default, opts or {})
end

return M
