---@type GruvboxGroup
local M = {}

M.get = function(colors, opts)
    local style = opts.style
    ---@type GruvboxHighlights
    return {
        ColorColumn = { bg = colors.bg1 },
        Conceal = { fg = colors.blue },
        CurSearch = { link = "IncSearch" },
        Cursor = { reverse = style.reverse },
        lCursor = { link = "Cursor" },
        CursorIM = { link = "Cursor" },
        CursorColumn = { link = "CursorLine" },
        CursorLine = { bg = colors.bg1 },
        Directory = { fg = colors.green, bold = style.bold },
        DiffAdd = {
            fg = colors.green,
            bg = colors.bg0,
            reverse = style.reverse,
        },
        DiffChange = {
            fg = colors.orange,
            bg = colors.bg0,
            reverse = style.reverse,
        },
        DiffDelete = {
            fg = colors.red,
            bg = colors.bg0,
            reverse = style.reverse,
        },
        DiffText = {
            fg = colors.yellow,
            bg = colors.bg0,
            reverse = style.reverse,
        },
        EndOfBuffer = { link = "NonText" },
        TermCursor = { reverse = style.reverse },
        ErrorMsg = { fg = colors.red, bold = style.bold },
        WinSeparator = {
            fg = colors.bg3,
            bg = opts.transparent_mode and colors.none or colors.bg0,
        },
        Folded = {
            fg = colors.gray,
            bg = colors.bg1,
            italic = style.italic,
        },
        FoldColumn = { fg = colors.gray, bg = colors.bg1 },
        SignColumn = { bg = colors.bg1 },
        IncSearch = {
            fg = colors.orange,
            bg = colors.bg0,
            reverse = style.reverse,
        },
        Substitute = { link = "Search" },
        LineNr = { fg = colors.bg4 },
        LineNrAbove = { link = "LineNr" },
        LineNrBelow = { link = "LineNr" },
        CursorLineNr = { fg = colors.yellow, bg = colors.bg1 },
        CursorLineFold = { link = "FoldColumn" },
        CursorLineSign = { link = "SignColumn" },
        MatchParen = { bg = colors.bg3, bold = style.bold },
        ModeMsg = { fg = colors.fg1, bold = style.bold },
        MsgArea = { fg = colors.fg1 },
        MsgSeparator = { link = "StatusLine" },
        MoreMsg = { fg = colors.blue, bold = style.bold },
        NonText = { fg = colors.bg2 },
        Normal = {
            fg = colors.fg1,
            bg = opts.transparent_mode and colors.none or colors.bg0,
        },
        NormalFloat = {
            fg = colors.fg1,
            bg = opts.transparent_mode and colors.none or colors.bg1,
        },
        FloatBorder = {
            fg = colors.bg3,
            bg = opts.transparent_mode and colors.none or colors.bg1,
        },
        FloatTitle = {
            fg = colors.blue,
            bg = opts.transparent_mode and colors.none or colors.bg1,
        },
        FloatFooter = { link = "FloatTitle" },
        NormalNC = {
            fg = colors.fg1,
            bg = opts.dim_inactive and colors.bg1 or colors.bg0,
        },
        Pmenu = { fg = colors.fg1, bg = colors.bg2 },
        PmenuSel = { fg = colors.bg2, bg = colors.blue, bold = style.bold },
        PmenuKind = { link = "Pmenu" },
        PmenuKindSel = { link = "PmenuSel" },
        PmenuExtra = { link = "Pmenu" },
        PmenuExtraSel = { link = "PmenuSel" },
        PmenuSbar = { bg = colors.bg2 },
        PmenuThumb = { bg = colors.bg4 },
        Question = { fg = colors.aqua, bold = style.bold },
        QuickFixLine = {
            fg = colors.bg0,
            bg = colors.yellow,
            bold = style.bold,
        },
        Search = {
            fg = colors.yellow,
            bg = colors.bg0,
            reverse = style.reverse,
        },
        -- SnippetTabstop = {},
        SpecialKey = { fg = colors.fg4 },
        SpellBad = { sp = colors.red, undercurl = style.undercurl },
        SpellCap = { sp = colors.blue, undercurl = style.undercurl },
        SpellLocal = { sp = colors.aqua, undercurl = style.undercurl },
        SpellRare = { sp = colors.purple, undercurl = style.undercurl },
        StatusLine = {
            fg = colors.bg2,
            bg = colors.fg1,
            reverse = style.reverse,
        },
        StatusLineNC = {
            fg = colors.bg1,
            bg = colors.fg4,
            reverse = style.reverse,
        },
        TabLine = { link = "TabLineFill" },
        TabLineFill = {
            fg = colors.bg4,
            bg = colors.bg1,
            style = style.tabline,
        },
        TabLineSel = {
            fg = colors.green,
            bg = colors.bg1,
            style = style.tabline,
        },
        Title = { fg = colors.green, bold = style.bold },
        Visual = { bg = colors.bg3, style = style.selection },
        VisualNOS = { link = "Visual" },
        WarningMsg = { fg = colors.yellow, bold = style.bold },
        Whitespace = { fg = colors.bg2 },
        WildMenu = { fg = colors.blue, bg = colors.bg2, bold = style.bold },
        WinBar = { fg = colors.fg4, bg = colors.bg0 },
        WinBarNC = { fg = colors.fg3, bg = colors.bg1 },

        -- Menu = {},
        -- Scrollbar = {},
        -- Tooltip = {},

        Comment = { fg = colors.gray, style = style.comments },

        Constant = { fg = colors.purple },
        String = { fg = colors.green, style = style.strings },
        Character = { fg = colors.purple },
        Number = { fg = colors.purple },
        Boolean = { fg = colors.purple },
        Float = { fg = colors.purple },

        Identifier = { fg = colors.blue },
        Function = { fg = colors.green, bold = style.bold },

        Statement = { fg = colors.red },
        Conditional = { fg = colors.red },
        Repeat = { fg = colors.red },
        Label = { fg = colors.red },
        Operator = { fg = colors.orange, style = style.operators },
        Keyword = { fg = colors.red },
        Exception = { fg = colors.red },

        PreProc = { fg = colors.aqua },
        Include = { fg = colors.aqua },
        Define = { fg = colors.aqua },
        Macro = { fg = colors.aqua },
        PreCondit = { fg = colors.aqua },

        Type = { fg = colors.yellow },
        StorageClass = { fg = colors.yellow },
        Structure = { fg = colors.yellow },
        Typedef = { fg = colors.yellow },

        Special = { fg = colors.orange },
        SpecialChar = { link = "Special" },
        Tag = { fg = colors.green },
        Delimiter = { link = "Special" },
        SpecialComment = { link = "Special" },
        Debug = { link = "Special" },

        Underlined = { sp = colors.blue, undercurl = style.undercurl },

        Ignore = { link = "Comment" },

        Error = { fg = colors.red, bold = style.bold },

        Todo = {
            fg = colors.bg0,
            bg = colors.yellow,
            bold = style.bold,
            style = style.comments,
        },

        Added = { fg = colors.green },
        Changed = { fg = colors.orange },
        Removed = { fg = colors.red },

        DiagnosticError = { fg = colors.red },
        DiagnosticWarn = { fg = colors.yellow },
        DiagnosticInfo = { fg = colors.blue },
        DiagnosticHint = { fg = colors.aqua },
        DiagnosticOk = { fg = colors.green },

        DiagnosticVirtualTextError = { link = "DiagnosticError" },
        DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
        DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
        DiagnosticVirtualTextHint = { link = "DiagnosticHint" },
        DiagnosticVirtualTextOk = { link = "DiagnosticOk" },

        DiagnosticUnderlineError = {
            sp = colors.red,
            undercurl = style.undercurl,
        },
        DiagnosticUnderlineWarn = {
            sp = colors.yellow,
            undercurl = style.undercurl,
        },
        DiagnosticUnderlineInfo = {
            sp = colors.blue,
            undercurl = style.undercurl,
        },
        DiagnosticUnderlineHint = {
            sp = colors.aqua,
            undercurl = style.undercurl,
        },
        DiagnosticUnderlineOk = {
            sp = colors.green,
            undercurl = style.undercurl,
        },

        DiagnosticFloatingError = { link = "DiagnosticError" },
        DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
        DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
        DiagnosticFloatingHint = { link = "DiagnosticHint" },
        DiagnosticFloatingOk = { link = "DiagnosticOk" },

        DiagnosticSignError = { fg = colors.red, style = style.signs },
        DiagnosticSignWarn = { fg = colors.yellow, style = style.signs },
        DiagnosticSignInfo = { fg = colors.blue, style = style.signs },
        DiagnosticSignHint = { fg = colors.aqua, style = style.signs },
        DiagnosticSignOk = { fg = colors.green, style = style.signs },

        DiagnosticDeprecated = { fg = colors.yellow },
        DiagnosticUnnecessary = { fg = colors.gray },

        debugPC = { fg = colors.fg3 },
        debugBreakpoint = { fg = colors.fg3, bg = colors.bg3 },

        LspReferenceText = { fg = colors.orange, bold = style.bold },
        LspReferenceWrite = { fg = colors.orange, bold = style.bold },
        LspReferenceRead = { fg = colors.orange, bold = style.bold },
        LspInlayHint = { fg = colors.gray },

        LspCodeLens = { fg = colors.gray },
        LspCodeLensSeparator = { fg = colors.bg3 },

        LspSignatureActiveParameter = { fg = colors.bg0, bg = colors.yellow },
    }
end

return M
