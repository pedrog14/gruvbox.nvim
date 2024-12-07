local M = {}

M.setup = require("gruvbox.config").setup

M.load = function()
    local bg = vim.o.background
    local opts = require("gruvbox.config").opts

    if vim.g.colors_name then
        vim.cmd.hi("clear")
    end
    vim.g.colors_name = "gruvbox"
    vim.o.termguicolors = true

    local groups = require("gruvbox.groups").get()
    for group, hl in pairs(groups) do
        vim.api.nvim_set_hl(0, group, hl)
    end

    if opts.terminal_colors then
        require("gruvbox.colors").terminal(bg)
    end
end

return M
