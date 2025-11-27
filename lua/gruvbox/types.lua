---@alias Background "dark"|"light"

---@alias Contrast "hard"|"soft"

---@class GruvboxCache
---@field inputs GruvboxInputs
---@field groups table<string, vim.api.keyset.highlight>

---@alias GruvboxColors GruvboxLight|GruvboxDark

---@class GruvboxHighlight: vim.api.keyset.highlight
---@field style string?

---@alias GruvboxHighlights table<string, GruvboxHighlight>
---@alias GruvboxHighlightsResolved table<string, vim.api.keyset.highlight>

---@alias GruvboxHighlightsGet fun(colors: GruvboxColors, opts: GruvboxConfig): GruvboxHighlights

---@class GruvboxInputs
---@field id string
---@field colors GruvboxColors
---@field plugins table<string, string>
---@field opts GruvboxConfig
