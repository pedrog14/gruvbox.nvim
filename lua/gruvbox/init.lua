local M = {}

---@param opts GruvboxConfig?
M.setup = function(opts)
    local config = require("gruvbox.config")
    config.opts = vim.tbl_deep_extend("force", config.default, opts or {})
end

M.load = function()
    if vim.g.colors_name then
        vim.cmd.hi("clear")
    end

    vim.g.colors_name = "gruvbox"
    vim.o.termguicolors = true

    require("gruvbox.config").setup()
end

return M
