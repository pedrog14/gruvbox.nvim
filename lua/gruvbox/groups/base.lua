local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors, opts)
  ---@type GruvboxHighlights
  -- stylua: ignore
  return {
    ColorColumn = { bg = colors.bg1 },
    Conceal     = { fg = colors.blue },

    CurSearch    = { link = "IncSearch" },
    Cursor       = { fg = colors.bg0, bg = colors.fg1 },
    lCursor      = { link = "Cursor" },
    CursorIM     = { link = "Cursor" },
    CursorColumn = { link = "CursorLine" },
    CursorLine   = { bg = colors.bg1 },

    Directory = { fg = colors.green, bold = true },

    DiffAdd     = { fg = colors.bg0, bg = colors.green },
    DiffChange  = { fg = colors.bg0, bg = colors.aqua },
    DiffDelete  = { fg = colors.bg0, bg = colors.red },
    DiffText    = { fg = colors.bg0, bg = colors.yellow },
    DiffTextAdd = { link = "DiffText" },

    EndOfBuffer = { link = "NonText" },

    TermCursor = { link = "Cursor" },

    OkMsg      = { fg = colors.green, bold = true },
    WarningMsg = { fg = colors.yellow, bold = true },
    ErrorMsg   = { fg = colors.red, bold = true },
    StderrMsg  = { link = "ErrorMsg" },
    StdoutMsg  = { link = "OkMsg" },

    WinSeparator = { fg = colors.bg3 },

    Folded     = { fg = colors.gray, bg = colors.bg1 },
    FoldColumn = { fg = colors.gray, bg = opts.transparent and colors.none or colors.bg1 },
    SignColumn = { fg = colors.bg4, bg = opts.transparent and colors.none or colors.bg1 },

    IncSearch  = { fg = colors.bg0, bg = colors.orange },
    Substitute = { link = "Search" },

    LineNr      = { fg = colors.bg4 },
    LineNrAbove = { link = "LineNr" },
    LineNrBelow = { link = "LineNr" },

    CursorLineNr   = { fg = colors.yellow, bg = colors.bg1 },
    CursorLineFold = { link = "FoldColumn" },
    CursorLineSign = { link = "SignColumn" },

    MatchParen = { bg = colors.bg3, bold = true },

    ModeMsg      = { fg = colors.yellow, bold = true },
    MoreMsg      = { fg = colors.yellow, bold = true },
    MsgArea      = { link = "Normal" },
    MsgSeparator = { link = "StatusLine" },

    NonText = { fg = colors.bg2 },

    Normal      = { fg = colors.fg1, bg = opts.transparent and colors.none or colors.bg0 },
    NormalFloat = { fg = colors.fg1, bg = colors.bg1 },
    NormalNC    = {
      fg = colors.fg1,
      bg = opts.transparent and colors.none or opts.dim_inactive and colors.bg1 or colors.bg0,
    },

    FloatBorder = { fg = colors.bg3, bg = colors.bg1 },
    FloatTitle  = { fg = colors.blue, bg = colors.bg1 },
    FloatFooter = { link = "FloatTitle" },

    Pmenu         = { fg = colors.fg1, bg = colors.bg2 },
    PmenuMatch    = { fg = colors.red, bg = colors.bg2 },
    PmenuSel      = { bg = colors.bg3, bold = true },
    PmenuMatchSel = { fg = colors.red, bg = colors.bg3, bold = true },
    PmenuSbar     = { bg = colors.bg2 },
    PmenuThumb    = { bg = colors.bg4 },

    Question = { fg = colors.orange, bold = true },

    QuickFixLine = { fg = colors.bg0, bg = colors.yellow, bold = true },

    Search = { fg = colors.bg0, bg = colors.yellow },

    SpecialKey = { fg = colors.fg4 },
    SpellBad   = { sp = colors.red, undercurl = true },
    SpellCap   = { sp = colors.blue, undercurl = true },
    SpellLocal = { sp = colors.aqua, undercurl = true },
    SpellRare  = { sp = colors.purple, undercurl = true },

    StatusLine   = { fg = colors.fg1, bg = colors.bg2 },
    StatusLineNC = { fg = colors.fg4, bg = colors.bg1 },

    TabLine     = { link = "TabLineFill" },
    TabLineFill = { fg = colors.bg4, bg = colors.bg1 },
    TabLineSel  = { fg = colors.green, bg = colors.bg1 },

    Title = { fg = colors.green, bold = true },

    Visual    = { bg = colors.bg3, style = "selection" },
    VisualNOS = { link = "Visual" },

    Whitespace = { fg = colors.bg2 },

    WildMenu = { fg = colors.blue, bg = colors.bg2, bold = true },

    WinBar   = { fg = colors.fg1, bg = colors.bg0 },
    WinBarNC = { fg = colors.fg4, bg = colors.bg0 },

    debugPC         = { fg = colors.fg3 },
    debugBreakpoint = { fg = colors.fg3, bg = colors.bg3 },
  }
end

return M
