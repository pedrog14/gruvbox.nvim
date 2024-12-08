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

    if opts.palette_overrides then
        require("gruvbox.colors").palette_overrides(opts.palette_overrides)
    end

    if opts.contrast then
        require("gruvbox.colors").set_contrast(opts.contrast, bg)
    end

    local groups = require("gruvbox.groups").get(bg)

    if opts.overrides then
        require("gruvbox.groups").overrides(opts.overrides, groups)
    end

    for group, hl in pairs(groups) do
        vim.api.nvim_set_hl(0, group, hl)
    end

    if opts.terminal_colors then
        require("gruvbox.groups").terminal(bg)
    end
end

return M
