---@class GruvboxCache
---@field inputs GruvboxInputs
---@field groups GruvboxHighlights

---@class GruvboxInputs
---@field colors GruvboxColors
---@field opts GruvboxConfig?
---@field plugins table<string, string>
---@field style table<string, vim.api.keyset.highlight | boolean>

---@alias GruvboxContrast "hard" | "soft"

---@class GruvboxGroup
---@field get? fun(colors: GruvboxColors, opts: GruvboxConfig): GruvboxHighlights

---@alias GruvboxHighlights table<string, vim.api.keyset.highlight | { style: vim.api.keyset.highlight }>
