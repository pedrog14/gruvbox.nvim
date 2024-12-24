local M = {}

M.setup = require("gruvbox.config").setup

M.load = function()
    local bg = vim.o.background

    if vim.g.colors_name then
        vim.cmd.hi("clear")
    end
    vim.g.colors_name = "gruvbox"
    vim.o.termguicolors = true

    local groups = require("gruvbox.groups").get(bg)

    for group, hl in pairs(groups) do
        vim.api.nvim_set_hl(0, group, hl)
    end
end

return M
