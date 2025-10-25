local M = {}

-- stylua: ignore

M.plugins = {
    ["blink.cmp"]             = "blink",
    ["bufferline.nvim"]       = "bufferline",
    ["gitsigns.nvim"]         = "gitsigns",
    ["indent-blankline.nvim"] = "ibl",
    ["lazy.nvim"]             = "lazy",
    ["mini.icons"]            = "mini.icons",
    ["mini.snippets"]         = "mini.snippets",
    ["mason.nvim"]            = "mason",
    ["noice.nvim"]            = "noice",
    ["snacks.nvim"]           = "snacks",
    ["telescope.nvim"]        = "telescope",
}

---@type fun(colors: GruvboxColors, opts: GruvboxConfig): table<string, vim.api.keyset.highlight>
M.get = function(colors, opts)
    local groups = {
        base = true,
        kinds = true,
        semantic_tokens = true,
        treesitter = true,
    }

    if opts.plugins.all then
        for _, group in pairs(M.plugins) do
            groups[group] = true
        end
    elseif opts.plugins.auto and package.loaded.lazy then
        local plugins = require("lazy.core.config").plugins
        for plugin, group in pairs(M.plugins) do
            if plugins[plugin] then
                groups[group] = true
            end
        end

        if plugins["mini.nvim"] then
            for _, group in pairs(M.plugins) do
                if group:find("^mini.") then
                    groups[group] = true
                end
            end
        end
    end

    for plugin, group in pairs(M.plugins) do
        local use = opts.plugins[group]
        use = use == nil and opts.plugins[plugin] or use
        if use ~= nil then
            if type(use) == "table" then
                use = use.enabled
            end
            groups[group] = use or nil
        end
    end

    local utils = require("gruvbox.utils")

    local names = vim.tbl_keys(groups)
    table.sort(names)

    local cache_key = vim.o.background
    local cache = opts.cache and utils.cache.read(cache_key)

    local inputs = {
        colors = colors,
        plugins = names,
        opts = {
            contrast = opts.contrast,
            dim_inactive = opts.dim_inactive,
            transparent = opts.transparent,
            style = opts.style,
        },
    }

    local ret = cache and vim.deep_equal(inputs, cache.inputs) and cache.groups

    if not ret then
        ret = {}
        for group, _ in pairs(groups) do
            local group_hl = utils.resolve(require("gruvbox.groups." .. group).get(colors, opts))
            for key, value in pairs(group_hl) do
                ret[key] = value
            end
        end
        if opts.cache then
            utils.cache.write(cache_key, { inputs = inputs, groups = ret })
        end
    end

    opts.group_override(ret, colors)

    return ret
end

return M
