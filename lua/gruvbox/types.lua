---@alias GruvboxBackground "dark" | "light"

---@class GruvboxCache
---@field inputs GruvboxInputs
---@field groups table<string, vim.api.keyset.highlight>

---@alias GruvboxContrast "hard" | "soft"

---@class GruvboxInputs
---@field colors GruvboxColors
---@field opts GruvboxConfig?
---@field plugins table<string, string>
---@field style table<string, vim.api.keyset.highlight> | vim.api.keyset.highlight

---@class GruvboxHighlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias GruvboxHighlights table<string, GruvboxHighlight>

---@alias GruvboxHighlightsGet fun(colors?: GruvboxColors, opts?: GruvboxConfig): GruvboxHighlights
