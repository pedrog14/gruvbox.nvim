---@alias Background "light"|"dark"
---
---@alias Contrast "soft"|"hard"

---@class GruvboxCache
---@field inputs GruvboxInputs
---@field groups table<string, vim.api.keyset.highlight>

---@alias GruvboxColors GruvboxLight|GruvboxDark

---@class GruvboxHighlight: vim.api.keyset.highlight
---@field style? string

---@alias GruvboxHighlights table<string, GruvboxHighlight>

---@alias GruvboxHighlightsGet fun(colors: GruvboxColors, opts: GruvboxConfig): GruvboxHighlights

---@class GruvboxInputs
---@field opts? GruvboxConfig
---@field colors GruvboxColors
---@field plugins table<string, string>
---@field style vim.api.keyset.highlight|table<string, vim.api.keyset.highlight>
