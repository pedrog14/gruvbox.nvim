---@class GruvboxColorsInit
---@field dark GruvboxDark
---@field light GruvboxLight
local M = {}
local config = require("gruvbox.config")

M.default = {
  dark = require("gruvbox.colors.dark"),
  light = require("gruvbox.colors.light"),
}

M.palette = require("gruvbox.colors.palette")

---@param bg Background
---@param opts GruvboxConfig
M.get = function(bg, opts)
  local colors = require("gruvbox.colors." .. bg) ---@type GruvboxColors

  if opts.contrast ~= "medium" then
    colors["bg0"] = M.palette[bg .. "0_" .. opts.contrast]
  end

  if opts.color_override then
    opts.color_override(colors)
  end

  return colors
end

return setmetatable(M, {
  __index = function(t, k)
    if k == "dark" or k == "light" then
      return t.get(k, config.opts or config.default)
    end
  end,
})
