local M = {}

---@class GruvboxConfig
---@field contrast Contrast?
---@field override table<string, HighlightDefinition>?
---@field palette_override table<string, string>?
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

---@param opts GruvboxConfig?
M.setup = function(opts)
    M.opts = vim.tbl_deep_extend("force", M.default, opts or {})
end

return M
