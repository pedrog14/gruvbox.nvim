local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors, opts)
  ---@type GruvboxHighlights
  -- stylua: ignore
  return {
    Comment = { fg = colors.gray, style = "comment" },

    Constant  = { fg = colors.purple },
    String    = { fg = colors.green, style = "string" },
    Character = { fg = colors.purple, style = "string" },
    Number    = { fg = colors.purple },
    Boolean   = { fg = colors.purple },
    Float     = { fg = colors.purple },

    Identifier = { fg = colors.blue },
    Function   = { fg = colors.green, bold = true },

    Statement   = { fg = colors.red },
    Conditional = { fg = colors.red },
    Repeat      = { fg = colors.red },
    Label       = { fg = colors.red },
    Operator    = { fg = colors.orange },
    Keyword     = { fg = colors.red },
    Exception   = { fg = colors.red },

    PreProc   = { fg = colors.aqua },
    Include   = { fg = colors.aqua },
    Define    = { fg = colors.aqua },
    Macro     = { fg = colors.aqua },
    PreCondit = { fg = colors.aqua },

    Type         = { fg = colors.yellow },
    StorageClass = { fg = colors.yellow },
    Structure    = { fg = colors.yellow },
    Typedef      = { fg = colors.yellow },

    Special        = { fg = colors.orange },
    SpecialChar    = { fg = colors.orange },
    Tag            = { fg = colors.green },
    Delimiter      = { fg = colors.orange },
    SpecialComment = { fg = colors.orange },
    Debug          = { fg = colors.orange },

    Underlined = { underline = true },

    Ignore = { link = "Normal" },

    Error = { fg = colors.red, bold = true },

    Todo = { fg = colors.bg0, bg = colors.yellow, bold = true },

    Added   = { fg = colors.green },
    Changed = { fg = colors.aqua },
    Removed = { fg = colors.red },

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
    -- FloatShadow = {},
    -- FloatShadowThrough = {},

    Pmenu         = { fg = colors.fg1, bg = colors.bg2 },
    PmenuMatch    = { fg = colors.red, bg = colors.bg2 },
    PmenuSel      = { fg = colors.bg2, bg = colors.blue, bold = true },
    PmenuMatchSel = { fg = colors.red, bg = colors.blue, bold = true },
    PmenuSbar     = { bg = colors.bg2 },
    PmenuThumb    = { bg = colors.bg4 },
    -- PmenuKind = {},
    -- PmenuExtra = {},
    -- PmenuKindSel = {},
    -- PmenuExtraSel = {},
    -- PmenuBorder = {},
    -- PmenuShadow = {},
    -- PmenuShadowThrough = {},
    -- ComplMatchIns = {},

    -- PreInsert = {},
    -- ComplHint = {},
    -- ComplHintMore = {},

    Question = { fg = colors.orange, bold = true },

    QuickFixLine = { fg = colors.bg0, bg = colors.yellow, bold = true },

    Search = { fg = colors.bg0, bg = colors.yellow },

    -- SnippetTabstop = {},
    -- SnippetTabstopActive = {},

    SpecialKey = { fg = colors.fg4 },
    SpellBad   = { sp = colors.red, undercurl = true },
    SpellCap   = { sp = colors.blue, undercurl = true },
    SpellLocal = { sp = colors.aqua, undercurl = true },
    SpellRare  = { sp = colors.purple, undercurl = true },

    StatusLine   = { fg = colors.fg1, bg = colors.bg2 },
    StatusLineNC = { fg = colors.fg4, bg = colors.bg1 },
    -- StatusLineTerm = {},
    -- StatusLineTermNC = {},

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

    DiagnosticError = { fg = colors.red },
    DiagnosticWarn  = { fg = colors.yellow },
    DiagnosticInfo  = { fg = colors.blue },
    DiagnosticHint  = { fg = colors.aqua },
    DiagnosticOk    = { fg = colors.green },

    DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
    DiagnosticUnderlineWarn  = { sp = colors.yellow, undercurl = true },
    DiagnosticUnderlineInfo  = { sp = colors.blue, undercurl = true },
    DiagnosticUnderlineHint  = { sp = colors.aqua, undercurl = true },
    DiagnosticUnderlineOk    = { sp = colors.green, undercurl = true },

    DiagnosticSignError = { fg = colors.red, style = "sign" },
    DiagnosticSignWarn  = { fg = colors.yellow, style = "sign" },
    DiagnosticSignInfo  = { fg = colors.blue, style = "sign" },
    DiagnosticSignHint  = { fg = colors.aqua, style = "sign" },
    DiagnosticSignOk    = { fg = colors.green, style = "sign" },

    DiagnosticDeprecated  = { fg = colors.yellow, strikethrough = true },
    DiagnosticUnnecessary = { link = "Comment" },

    LspReferenceText   = { bg = colors.bg2 },
    LspReferenceRead   = { bg = colors.bg2 },
    LspReferenceWrite  = { bg = colors.bg2 },
    LspReferenceTarget = { bg = colors.bg2 },

    LspInlayHint = { fg = colors.gray, bg = colors.bg1 },

    LspCodeLens          = { fg = colors.gray },
    LspCodeLensSeparator = { link = "LspCodeLens" },

    LspSignatureActiveParameter = { bg = colors.bg2, bold = true },
  }
end

return M
