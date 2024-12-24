local M = {}

M.setup = require("gruvbox.config").setup

M.load = function()
    if vim.g.colors_name then
        vim.cmd.hi("clear")
    end
    vim.g.colors_name = "gruvbox"
    vim.o.termguicolors = true

    require("gruvbox.colors").setup()
end

return M
