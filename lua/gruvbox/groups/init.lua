local M = {}

-- stylua: ignore
M.plugins = {
  ["bufferline.nvim"]       = "bufferline",
  ["dropbar.nvim"]          = "dropbar",
  ["gitsigns.nvim"]         = "gitsigns",
  ["indent-blankline.nvim"] = "ibl",
  ["indentmini.nvim"]       = "indentmini",
  ["lazy.nvim"]             = "lazy",
  ["mason.nvim"]            = "mason",
  ["noice.nvim"]            = "noice",
  ["snacks.nvim"]           = "snacks",
  ["telescope.nvim"]        = "telescope",

  ["blink.cmp"]    = "blink.cmp",
  ["blink.indent"] = "blink.indent",

  ["mini.icons"]    = "mini.icons",
  ["mini.snippets"] = "mini.snippets",

  ["nvim-treesitter-context"] = "treesitter.context"
}

---@param colors GruvboxColors
---@param opts GruvboxConfig
---@return GruvboxHighlightsResolved
M.get = function(colors, opts)
  local utils = require("gruvbox.utils")

  local groups = {
    base = true,
    kinds = true,
    semantic_tokens = true,
    treesitter = true,
  }

  local plugins = {}

  if opts.plugins.all then
    for _, group in pairs(M.plugins) do
      plugins[group] = true
    end
  elseif opts.plugins.auto and package.loaded.lazy then
    local lazy = require("lazy.core.config").plugins

    for plugin, group in pairs(M.plugins) do
      if lazy[plugin] then
        plugins[group] = true
      end
    end

    if lazy["blink.nvim"] then
      for _, group in pairs(M.plugins) do
        if group:find("^blink%.") then
          plugins[group] = true
        end
      end
    end

    if lazy["mini.nvim"] then
      for _, group in pairs(M.plugins) do
        if group:find("^mini%.") then
          plugins[group] = true
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

      plugins[group] = use or nil
    end
  end

  local cache_key = vim.o.background
  local cache = opts.cache and utils.cache.read(cache_key)

  ---@type GruvboxInputs
  local inputs = {
    colors = colors,
    opts = {
      contrast = opts.contrast,
      dim_inactive = opts.dim_inactive,
      transparent = opts.transparent,
      style = opts.style,
    },
  }

  inputs.id = utils.git_id(debug.getinfo(1).source:sub(2, -28)):sub(1, -2)
  inputs.plugins = table.sort(vim.tbl_keys(plugins))

  local ret = cache and vim.deep_equal(inputs, cache.inputs) and cache.groups

  if not ret then
    local group_hl

    ret = {}

    for group, _ in pairs(groups) do
      group_hl = require("gruvbox.groups." .. group).get(colors, opts) --[[@as GruvboxHighlights]]
      for key, value in pairs(group_hl) do
        ret[key] = value
      end
    end

    for group, _ in pairs(plugins) do
      group_hl = require("gruvbox.groups.plugins." .. group).get(colors, opts) --[[@as GruvboxHighlights]]
      for key, value in pairs(group_hl) do
        ret[key] = value
      end
    end

    utils.resolve(ret --[[@as GruvboxHighlights]], opts)

    if opts.cache then
      utils.cache.write(cache_key, { inputs = inputs, groups = ret })
    end
  end

  if opts.group_override then
    opts.group_override(ret, colors)
  end

  return ret
end

return M
