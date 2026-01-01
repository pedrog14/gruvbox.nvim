---@meta

---@alias Background
---|"dark"
---|"light"

---@alias Contrast
---|"hard"
---|"medium"
---|"soft"

---@alias Style
---|"comment"
---|"operator"
---|"selection"
---|"sign"
---|"string"

---@alias GruvboxColors GruvboxLight|GruvboxDark

---@class GruvboxHighlight: vim.api.keyset.highlight
---@field style Style?

---@alias GruvboxHighlights         table<string, GruvboxHighlight>
---@alias GruvboxHighlightsResolved table<string, vim.api.keyset.highlight>

---@alias GruvboxHighlightsGet fun(colors: GruvboxColors, opts: GruvboxConfig): GruvboxHighlights

---@class GruvboxInputs
---@field id      string?
---@field plugins string[]?
---@field colors  GruvboxColors?
---@field opts    GruvboxConfig?

---@class GruvboxCache
---@field inputs GruvboxInputs
---@field groups table<string, vim.api.keyset.highlight>
