local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors, opts)
    ---@type GruvboxHighlights
    -- stylua: ignore
    return {
        ColorColumn                 = { bg = colors.bg1 },
        Conceal                     = { fg = colors.blue },
        CurSearch                   = { link = "IncSearch" },
        Cursor                      = { fg = colors.bg0, bg = colors.fg1 },
        lCursor                     = { link = "Cursor" },
        CursorIM                    = { link = "Cursor" },
        CursorColumn                = { link = "CursorLine" },
        CursorLine                  = { bg = colors.bg1 },
        Directory                   = { fg = colors.green, bold = true },
        DiffAdd                     = { fg = colors.bg0, bg = colors.green },
        DiffChange                  = { fg = colors.bg0, bg = colors.orange },
        DiffDelete                  = { fg = colors.bg0, bg = colors.red },
        DiffText                    = { fg = colors.bg0, bg = colors.yellow },
        EndOfBuffer                 = { link = "NonText" },
        TermCursor                  = { link = "Cursor" },
        ErrorMsg                    = { fg = colors.red, bold = true },
        WinSeparator                = { fg = colors.bg3 },
        Folded                      = { fg = colors.gray, bg = colors.bg1 },
        FoldColumn                  = { fg = colors.gray, bg = opts.transparent and colors.none or colors.bg1 },
        SignColumn                  = { bg = opts.transparent and colors.none or colors.bg1 },
        IncSearch                   = { fg = colors.bg0, bg = colors.orange },
        Substitute                  = { link = "Search" },
        LineNr                      = { fg = colors.bg4 },
        LineNrAbove                 = { link = "LineNr" },
        LineNrBelow                 = { link = "LineNr" },
        CursorLineNr                = { fg = colors.yellow, bg = colors.bg1 },
        CursorLineFold              = { link = "FoldColumn" },
        CursorLineSign              = { link = "SignColumn" },
        MatchParen                  = { bg = colors.bg3, bold = true },
        ModeMsg                     = { fg = colors.yellow, bold = true },
        MsgSeparator                = { link = "StatusLine" },
        MoreMsg                     = { fg = colors.yellow, bold = true },
        NonText                     = { fg = colors.bg2 },
        Normal                      = { fg = colors.fg1, bg = opts.transparent and colors.none or colors.bg0 },
        NormalFloat                 = { fg = colors.fg1, bg = colors.bg1 },
        FloatBorder                 = { fg = colors.bg3, bg = colors.bg1 },
        FloatTitle                  = { fg = colors.blue, bg = colors.bg1 },
        FloatFooter                 = { link = "FloatTitle" },
        NormalNC                    = { fg = colors.fg1, bg = opts.transparent and colors.none or opts.dim_inactive and colors.bg1 or colors.bg0 },
        Pmenu                       = { fg = colors.fg1, bg = colors.bg2 },
        PmenuSel                    = { fg = colors.bg2, bg = colors.blue, bold = true },
        PmenuKind                   = { link = "Pmenu" },
        PmenuKindSel                = { link = "PmenuSel" },
        PmenuExtra                  = { link = "Pmenu" },
        PmenuExtraSel               = { link = "PmenuSel" },
        PmenuSbar                   = { bg = colors.bg2 },
        PmenuThumb                  = { bg = colors.bg4 },
        Question                    = { fg = colors.orange, bold = true },
        QuickFixLine                = { fg = colors.bg0, bg = colors.yellow, bold = true },
        Search                      = { fg = colors.bg0, bg = colors.yellow },
        SpecialKey                  = { fg = colors.fg4 },
        SpellBad                    = { sp = colors.red, undercurl = true },
        SpellCap                    = { sp = colors.blue, undercurl = true },
        SpellLocal                  = { sp = colors.aqua, undercurl = true },
        SpellRare                   = { sp = colors.purple, undercurl = true },
        StatusLine                  = { fg = colors.fg1, bg = colors.bg2 },
        StatusLineNC                = { fg = colors.fg4, bg = colors.bg1 },
        TabLine                     = { link = "TabLineFill" },
        TabLineFill                 = { fg = colors.bg4, bg = colors.bg1 },
        TabLineSel                  = { fg = colors.green, bg = colors.bg1 },
        Title                       = { fg = colors.green, bold = true },
        Visual                      = { bg = colors.bg3, style = "selection" },
        VisualNOS                   = { link = "Visual" },
        WarningMsg                  = { fg = colors.yellow, bold = true },
        Whitespace                  = { fg = colors.bg2 },
        WildMenu                    = { fg = colors.blue, bg = colors.bg2, bold = true },
        WinBar                      = { fg = colors.fg4, bg = colors.bg0 },
        WinBarNC                    = { fg = colors.fg3, bg = colors.bg1 },

        Comment                     = { fg = colors.gray, style = "comments" },

        Conditional                 = { fg = colors.red },
        Exception                   = { fg = colors.red },
        Keyword                     = { fg = colors.red },
        Label                       = { fg = colors.red },
        Repeat                      = { fg = colors.red },
        Statement                   = { fg = colors.red },

        Debug                       = { fg = colors.orange },
        Delimiter                   = { fg = colors.orange },
        Operator                    = { fg = colors.orange, style = "operators" },
        Special                     = { fg = colors.orange },
        SpecialChar                 = { fg = colors.orange },
        SpecialComment              = { fg = colors.orange },

        StorageClass                = { fg = colors.yellow },
        Structure                   = { fg = colors.yellow },
        Type                        = { fg = colors.yellow },
        Typedef                     = { fg = colors.yellow },

        Function                    = { fg = colors.green, bold = true },
        String                      = { fg = colors.green, style = "strings" },
        Tag                         = { fg = colors.green },

        PreProc                     = { fg = colors.aqua },
        Include                     = { fg = colors.aqua },
        Define                      = { fg = colors.aqua },
        Macro                       = { fg = colors.aqua },
        PreCondit                   = { fg = colors.aqua },

        Identifier                  = { fg = colors.blue },

        Boolean                     = { fg = colors.purple },
        Character                   = { fg = colors.purple },
        Constant                    = { fg = colors.purple },
        Float                       = { fg = colors.purple },
        Number                      = { fg = colors.purple },

        Underlined                  = { underline = true },
        Ignore                      = { link = "Normal" },
        Error                       = { fg = colors.red, bold = true },

        Todo                        = { fg = colors.bg0, bg = colors.yellow },

        Added                       = { fg = colors.green },
        Changed                     = { fg = colors.orange },
        Removed                     = { fg = colors.red },

        DiagnosticError             = { fg = colors.red },
        DiagnosticWarn              = { fg = colors.yellow },
        DiagnosticInfo              = { fg = colors.blue },
        DiagnosticHint              = { fg = colors.aqua },
        DiagnosticOk                = { fg = colors.green },

        DiagnosticUnderlineError    = { sp = colors.red, undercurl = true },
        DiagnosticUnderlineWarn     = { sp = colors.yellow, undercurl = true },
        DiagnosticUnderlineInfo     = { sp = colors.blue, undercurl = true },
        DiagnosticUnderlineHint     = { sp = colors.aqua, undercurl = true },
        DiagnosticUnderlineOk       = { sp = colors.green, undercurl = true },

        DiagnosticSignError         = { fg = colors.red, style = "signs" },
        DiagnosticSignWarn          = { fg = colors.yellow, style = "signs" },
        DiagnosticSignInfo          = { fg = colors.blue, style = "signs" },
        DiagnosticSignHint          = { fg = colors.aqua, style = "signs" },
        DiagnosticSignOk            = { fg = colors.green, style = "signs" },

        DiagnosticDeprecated        = { fg = colors.yellow, strikethrough = true },
        DiagnosticUnnecessary       = { link = "Comment" },

        debugPC                     = { fg = colors.fg3 },
        debugBreakpoint             = { fg = colors.fg3, bg = colors.bg3 },

        LspReferenceText            = { bg = colors.bg2 },
        LspReferenceWrite           = { bg = colors.bg2 },
        LspReferenceRead            = { bg = colors.bg2 },
        LspInlayHint                = { fg = colors.gray, bg = colors.bg1 },

        LspCodeLens                 = { fg = colors.gray },
        LspCodeLensSeparator        = { fg = colors.bg3 },

        LspSignatureActiveParameter = { fg = colors.bg0, bg = colors.yellow },

        Bold                        = { bold = true },
        Italic                      = { italic = true },
    }
end

return M
