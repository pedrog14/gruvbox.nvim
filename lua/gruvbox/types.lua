---@alias Background "dark" | "light"

---@class GruvboxCache
---@field inputs GruvboxInputs
---@field groups table<string, vim.api.keyset.highlight>

---@alias GruvboxColors GruvboxDark | GruvboxLight

---@alias GruvboxColorsGet fun(opts: GruvboxConfig, bg?: Background): GruvboxColors

---@alias GruvboxContrast "hard" | "soft"

---@class GruvboxHighlight: vim.api.keyset.highlight
---@field style? string

---@alias GruvboxHighlights table<string, GruvboxHighlight>

---@alias GruvboxHighlightsGet fun(colors: GruvboxColors, opts: GruvboxConfig): GruvboxHighlights

---@class GruvboxInputs
---@field colors GruvboxColors
---@field opts GruvboxConfig?
---@field plugins table<string, string>
---@field style table<string, vim.api.keyset.highlight> | vim.api.keyset.highlight
