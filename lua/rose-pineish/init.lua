local c = require("themes.color-utils")

local function highlights(palette)
    local float_background_color = palette.surface

    local strong_selection_background_color = palette.highlight_high
    local selection_background_color = palette.highlight_medium

    local separator_color = palette.highlight_high

    local variable_text_color = palette.text
    local parameter_text_color = palette.foam
    local constant_text_color = palette.gold
    local property_text_color = palette.foam
    local keyword_text_color = palette.pine
    local number_text_color = palette.gold
    local boolean_text_color = palette.love
    local string_text_color = palette.gold
    local function_text_color = palette.iris
    local metadata_text_color = palette.iris
    local type_text_color = palette.love
    local comment_text_color = palette.subtle
    local operator_text_color = palette.subtle
    local punctuation_text_color = palette.subtle
    local file_text_color = palette.foam
    local guide_color = palette.muted
    local whitespace_text_color = c.blend(palette.subtle, 0.25, palette.muted)

    local git_added_text_color = palette.leaf
    local git_added_background_color = palette.leaf_background
    local git_changed_text_color = palette.foam
    local git_changed_background_color = palette.foam_background
    local git_removed_text_color = palette.rose
    local git_removed_background_color = palette.rose_background
    local git_untracked_text_color = palette.iris
    local git_untracked_background_color = palette.iris_background

    return {
        blink_cmp = {
            BlinkCmpGhostText = { fg = palette.muted },
            BlinkCmpKind = { fg = palette.surface, bg = palette.text },
            BlinkCmpKindClass = { fg = palette.surface, bg = type_text_color },
            BlinkCmpKindConstant = { fg = palette.surface, bg = constant_text_color },
            BlinkCmpKindConstructor = { link = "BlinkCmpKindFunction" },
            BlinkCmpKindEnum = { link = "BlinkCmpKindClass" },
            BlinkCmpKindEnumMember = { link = "BlinkCmpKindConstant" },
            BlinkCmpKindField = { link = "BlinkCmpKindProperty" },
            BlinkCmpKindFile = { fg = palette.surface, bg = file_text_color },
            BlinkCmpKindFolder = { link = "BlinkCmpKindFile" },
            BlinkCmpKindFunction = { fg = palette.surface, bg = function_text_color },
            BlinkCmpKindInterface = { link = "BlinkCmpKindClass" },
            BlinkCmpKindKeyword = { fg = palette.surface, bg = keyword_text_color },
            BlinkCmpKindMethod = { link = "BlinkCmpKindFunction" },
            BlinkCmpKindOperator = { fg = palette.surface, bg = operator_text_color },
            BlinkCmpKindProperty = { fg = palette.surface, bg = property_text_color },
            BlinkCmpKindSnippet = { fg = palette.surface, bg = palette.rose },
            BlinkCmpKindStruct = { link = "BlinkCmpKindClass" },
            BlinkCmpKindText = { fg = palette.surface, bg = palette.subtle },
            BlinkCmpKindUnit = { link = "BlinkCmpKindKeyword" },
            BlinkCmpKindVariable = { fg = palette.surface, bg = variable_text_color },
            BlinkCmpLabel = { fg = palette.text },
            BlinkCmpLabelDeprecated = { fg = palette.subtle, strikethrough = true },
            BlinkCmpLabelDescription = { fg = palette.gold },
            BlinkCmpLabelDetail = { fg = palette.subtle },
            BlinkCmpLabelMatch = { bold = true, underline = true },
            BlinkCmpMenuSelection = { bg = selection_background_color },
            BlinkCmpScrollBarGutter = { bg = palette.overlay },
            BlinkCmpScrollBarThumb = { bg = palette.muted },
            BlinkCmpSignatureHelp = { link = "NormalFloat" },
            BlinkCmpSignatureHelpActiveParameter = { bg = selection_background_color },
            BlinkCmpSrc = { fg = palette.subtle },
        },
        dap = {
            DapBreakpointSign = { fg = palette.love, bg = palette.love_background },
            DapBreakpointLine = { bg = palette.love_background },
            DapBreakpointLineNumber = { bg = palette.love_background },
            DapBreakpointConditionSign = { fg = palette.love, bg = palette.love_background },
            DapBreakpointConditionLine = { bg = palette.love_background },
            DapBreakpointConditionLineNumber = { bg = palette.love_background },
            DapLogPointSign = { fg = palette.iris, bg = palette.iris_background },
            DapLogPointLine = { bg = palette.iris_background },
            DapLogPointLineNumber = { bg = palette.iris_background },
            DapStoppedSign = { fg = palette.foam, bg = palette.foam_background },
            DapStoppedLine = { bg = palette.foam_background },
            DapStoppedLineNumber = { bg = palette.foam_background },
            DapBreakpointRejectedSign = { fg = palette.subtle },
            DapBreakpointRejectedLine = {},
            DapBreakpointRejectedLineNumber = {},
        },
        dap_ui = {
            DapUIBreakpointsCurrentLine = { fg = palette.leaf, bold = true },
            DapUIBreakpointsDisabledLine = { fg = palette.subtle },
            DapUIBreakpointsInfo = { fg = palette.leaf },
            DapUIBreakpointsLine = { fg = palette.iris },
            DapUIBreakpointsPath = { link = "DapUIScope" },
            DapUICurrentFrameName = { link = "DapUINormal" },
            DapUIDecoration = { fg = palette.subtle },
            DapUIEndofBuffer = { link = "EndOfBuffer" },
            DapUIFloatBorder = { fg = separator_color },
            DapUIFloatNormal = { link = "NormalFloat" },
            DapUIFrameName = { link = "Normal" },
            DapUILineNumber = { fg = palette.iris },
            DapUIModifiedValue = { fg = palette.foam },
            DapUINormal = { link = "Normal" },
            DapUINormalNC = { link = "DapUINormal" },
            DapUIPlayPause = { fg = palette.leaf, bg = palette.surface },
            DapUIPlayPauseNC = { fg = palette.leaf, bg = palette.surface },
            DapUIRestart = { fg = palette.leaf, bg = palette.surface },
            DapUIRestartNC = { fg = palette.leaf, bg = palette.surface },
            DapUIScope = { fg = palette.text, bold = true },
            DapUISource = { fg = palette.gold },
            DapUIStepBack = { fg = palette.foam, bg = palette.surface },
            DapUIStepBackNC = { fg = palette.foam, bg = palette.surface },
            DapUIStepInto = { fg = palette.foam, bg = palette.surface },
            DapUIStepIntoNC = { fg = palette.foam, bg = palette.surface },
            DapUIStepOut = { fg = palette.foam, bg = palette.surface },
            DapUIStepOutNC = { fg = palette.foam, bg = palette.surface },
            DapUIStepOver = { fg = palette.foam, bg = palette.surface },
            DapUIStepOverNC = { fg = palette.foam, bg = palette.surface },
            DapUIStop = { fg = palette.rose, bg = palette.surface },
            DapUIStopNC = { fg = palette.rose, bg = palette.surface },
            DapUIStoppedThread = { fg = palette.foam },
            DapUIThread = { fg = palette.leaf },
            DapUIType = { fg = palette.gold },
            DapUIUnavailable = { fg = palette.subtle, bg = palette.surface },
            DapUIUnavailableNC = { fg = palette.subtle, bg = palette.surface },
            DapUIValue = { link = "DapUINormal" },
            DapUIVariable = { fg = palette.suble },
            DapUIWatchesEmpty = { fg = palette.rose },
            DapUIWatchesError = { fg = palette.rose },
            DapUIWatchesValue = { fg = palette.leaf },
            DapUIWinSelect = { fg = palette.foam, bold = true },
        },
        diagnostics = {
            DiagnosticError = { fg = palette.rose },
            DiagnosticHint = { fg = palette.iris },
            DiagnosticInfo = { fg = palette.foam },
            DiagnosticOk = { fg = palette.leaf },
            DiagnosticUnderlineError = { sp = palette.rose, undercurl = true },
            DiagnosticUnderlineHint = { sp = palette.iris },
            DiagnosticUnderlineInfo = { sp = palette.foam },
            DiagnosticUnderlineOk = { sp = palette.leaf },
            DiagnosticUnderlineWarn = { sp = palette.gold, undercurl = true },
            DiagnosticVirtualTextError = { fg = palette.rose, bg = palette.rose_background },
            DiagnosticVirtualTextHint = { fg = palette.iris, bg = palette.iris_background },
            DiagnosticVirtualTextInfo = { fg = palette.foam, bg = palette.foam_background },
            DiagnosticVirtualTextOk = { fg = palette.leaf, bg = palette.leaf_background },
            DiagnosticVirtualTextWarn = { fg = palette.gold, bg = palette.gold_background },
            DiagnosticWarn = { fg = palette.gold },
        },
        editor = {
            ColorColumn = { bg = guide_color },
            CurSearch = { bg = strong_selection_background_color, underline = true },
            Cursor = { fg = palette.cursor_text, bg = palette.cursor_background },
            CursorColumn = { link = "CursorLine" },
            CursorIM = { link = "Cursor" },
            CursorLine = { bg = palette.highlight_low },
            CursorLineNr = { fg = palette.love },
            Directory = { fg = palette.leaf },
            EndOfBuffer = { fg = whitespace_text_color },
            ErrorMsg = { fg = palette.rose },
            FoldColumn = { fg = palette.subtle },
            IncSearch = { link = "Search" },
            LineNr = { fg = palette.subtle },
            MatchParen = { fg = palette.pine, bold = true },
            ModeMsg = { link = "MoreMsg" },
            MoreMsg = { fg = palette.iris },
            LspReferenceRead = { link = "Search" },
            LspReferenceText = { link = "LspReferenceRead" },
            LspReferenceWrite = { link = "LspReferenceRead" },
            NonText = { fg = palette.muted },
            Normal = { fg = palette.text, bg = palette.base },
            NormalFloat = { fg = palette.text, bg = float_background_color },
            NormalNC = { fg = palette.subtle, bg = palette.base },
            Pmenu = { fg = palette.text, bg = palette.surface },
            PmenuExtra = { fg = palette.subtle, bg = "NONE" },
            PmenuSbar = { link = "Pmenu" },
            PmenuSel = { fg = palette.text, bg = palette.overlay },
            PmenuThumb = { bg = palette.overlay },
            Question = { link = "MoreMsg" },
            QuickFixLine = { link = "CursorLine" },
            Search = { bg = selection_background_color },
            SignColumn = { fg = palette.subtle },
            SignColumnSB = { link = "SignColumn" },
            SpellBad = { sp = palette.subtle, undercurl = true },
            SpellCap = { sp = palette.subtle, undercurl = true },
            SpellLocal = { sp = palette.subtle, undercurl = true },
            SpellRare = { sp = palette.subtle, undercurl = true },
            Title = { fg = palette.foam, bold = true },
            FloatTitle = { fg = palette.foam, bg = float_background_color, bold = true },
            VertSplit = { link = "WinSeparator" },
            Visual = { bg = selection_background_color },
            VisualNOS = { link = "Visual" },
            WarningMsg = { fg = palette.gold, bold = true },
            Whitespace = { fg = whitespace_text_color },
            WinBar = { fg = palette.subtle, bg = palette.surface },
            WinBarNC = { fg = palette.muted, bg = palette.surface },
            WinSeparator = { fg = separator_color },
            lCursor = { link = "Cursor" },
        },
        folds = {
            Folded = { fg = palette.text, bg = palette.surface },
            FoldText = { fg = palette.text },
        },
        fyler = {
            FylerRed = { fg = palette.rose },
            FylerGrey = { fg = palette.subtle },
            FylerGreen = { fg = palette.leaf },
            FylerFSFile = { fg = palette.white },
            FylerFSLink = { fg = palette.foam },
            FylerYellow = { fg = palette.gold },
            FylerGitAdded = { fg = git_added_text_color },
            FylerGitStaged = { fg = git_added_text_color },
            FylerGitDeleted = { fg = git_removed_text_color },
            FylerGitIgnored = { fg = palette.subtle },
            FylerGitRenamed = { fg = git_changed_text_color },
            FylerGitConflict = { fg = palette.text },
            FylerGitModified = { fg = git_changed_text_color },
            FylerGitUnstaged = { fg = git_changed_text_color },
            FylerGitUntracked = { fg = git_untracked_text_color },
            FylerFSDirectoryIcon = { link = "Directory" },
            FylerFSDirectoryName = { link = "Directory" },
            FylerNormal = { link = "Normal" },
            FylerNormalNC = { link = "NormalNC" },
            FylerIndentMarker = { link = "FylerGrey" },
            FylerBorder = { link = "FylerNormal" },
        },
        git = {
            Added = { fg = git_added_text_color },
            Removed = { fg = git_removed_text_color },
            DiffAdd = { bg = git_added_background_color },
            DiffChange = { bg = git_changed_background_color },
            DiffDelete = { bg = git_removed_background_color },
            DiffText = { bg = c.blend(git_changed_text_color, 0.25, git_changed_background_color) },
        },
        gitsigns = {
            GitSignsAdd = { fg = git_added_text_color },
            GitSignsAddInline = { bg = git_added_background_color },
            GitSignsAddLn = { bg = git_added_background_color },
            GitSignsAddLnInline = { link = "GitSignsAddLn" },
            GitSignsAddNr = { link = "GitSignsAdd" },
            GitSignsAddPreview = { link = "GitSignsAddLnInline" },
            GitSignsChange = { fg = git_changed_text_color },
            GitSignsChangeInline = { bg = git_changed_background_color },
            GitSignsChangeLn = { bg = git_changed_background_color },
            GitSignsChangeLnInline = { link = "GitSignsChangeLn" },
            GitSignsChangeNr = { link = "GitSignsChange" },
            GitSignsCurrentLineBlame = { fg = palette.subtle },
            GitSignsDelete = { fg = git_removed_text_color },
            GitSignsDeleteInline = { bg = git_removed_background_color },
            GitSignsDeleteLn = { bg = git_removed_background_color },
            GitSignsDeleteLnInline = { link = "GitSignsDeleteLn" },
            GitSignsDeleteNr = { link = "GitSignsDelete" },
            GitSignsDeletePreview = { link = "GitSignsDeleteLnInline" },
            GitSignsUntracked = { fg = git_untracked_text_color },
            GitSignsUntrackedInline = { bg = git_untracked_background_color },
            GitSignsUntrackedLn = { bg = git_untracked_background_color },
            GitSignsUntrackedLnInline = { link = "GitSignsUntrackedLn" },
            GitSignsUntrackedNr = { link = "GitSignsUntracked" },
        },
        luasnip = {
            LuasnipChoiceNodeActive = { bg = palette.gold_background, sp = palette.gold, underline = true },
            LuasnipChoiceNodeActiveVirtualText = { fg = palette.gold },
            LuasnipChoiceNodeUnvisited = { sp = palette.gold, underdashed = true },
            LuasnipChoiceNodeUnvisitedVirtualText = { fg = palette.gold },
            LuasnipChoiceNodeVisited = { sp = palette.gold_background, underdashed = true },
            LuasnipChoiceNodeVisitedVirtualText = { fg = palette.gold_background },
            LuasnipInsertNodeActive = { bg = palette.foam_background, sp = palette.foam, underline = true },
            LuasnipInsertNodeActiveVirtualText = { fg = palette.foam },
            LuasnipInsertNodeUnvisited = { sp = palette.foam, underdashed = true },
            LuasnipInsertNodeUnvisitedVirtualText = { fg = palette.foam },
            LuasnipInsertNodeVisited = { sp = palette.foam_background, underdashed = true },
            LuasnipInsertNodeVisitedVirtualText = { fg = palette.foam_background },
        },
        navic = {
            NavicIconsFile = { fg = file_text_color },
            NavicIconsModule = { fg = keyword_text_color },
            NavicIconsNamespace = { fg = keyword_text_color },
            NavicIconsPackage = { fg = keyword_text_color },
            NavicIconsClass = { fg = type_text_color },
            NavicIconsMethod = { link = "NavicIconsFunction" },
            NavicIconsProperty = { fg = property_text_color },
            NavicIconsField = { link = "NavicIconsProperty" },
            NavicIconsConstructor = { link = "NavicIconsMethod" },
            NavicIconsEnum = { link = "NavicIconsProperty" },
            NavicIconsInterface = { link = "NavicIconsClass" },
            NavicIconsFunction = { fg = function_text_color },
            NavicIconsVariable = { fg = property_text_color },
            NavicIconsConstant = { link = "NavicIconsVariable" },
            NavicIconsString = { fg = string_text_color },
            NavicIconsNumber = { fg = number_text_color },
            NavicIconsBoolean = { fg = boolean_text_color },
            NavicIconsArray = { fg = type_text_color },
            NavicIconsObject = { fg = type_text_color },
            NavicIconsKey = { fg = keyword_text_color },
            NavicIconsNull = { fg = keyword_text_color },
            NavicIconsEnumMember = { link = "NavicIconsProperty" },
            NavicIconsStruct = { fg = type_text_color },
            NavicIconsEvent = { fg = type_text_color },
            NavicIconsOperator = { fg = operator_text_color },
            NavicIconsTypeParameter = { fg = parameter_text_color },
            NavicText = { fg = palette.text },
            NavicSeparator = { fg = whitespace_text_color },
        },
        neotree = {
            NeoTreeFileName = { fg = palette.text },
            NeoTreeFileStats = { fg = palette.subtle },
            NeoTreeRootName = { fg = palette.text, bold = true },
            NeoTreeFileStatsHeader = { fg = palette.subtle, bold = true },
            NeoTreeDotfile = { fg = palette.subtle },
            NeoTreeModified = { link = "NeoTreeFileName" },
            NeoTreeGitAdded = { link = "GitSignsAdd" },
            NeoTreeGitDeleted = { link = "GitSignsDelete" },
            NeoTreeGitModified = { link = "GitSignsChange" },
            NeoTreeGitUntracked = { link = "GitSignsUntracked" },
            NeoTreeGitConflict = { link = "NeoTreeFileName" },
            NeoTreeGitStaged = { link = "NeoTreeFileName" },
            NeoTreeFloatTitle = { link = "FloatTitle" },
            NeoTreeDimText = { fg = palette.muted },
            NeoTreeExpander = { fg = palette.subtle },
            NeoTreeTitleBar = { link = "FloatTitle" },
        },
        nvim_ufo = {
            UfoFoldedBg = { bg = palette.surface },
        },
        snacks = {
            SnacksIndent = { fg = guide_color },
            SnacksIndentScope = { fg = palette.iris },
            SnacksPickerMatch = { fg = palette.gold, bold = true, underline = true },
        },
        statusline = {
            StatusLine = { fg = palette.subtle, bg = palette.surface },
            StatusLineAutoformatDisabled = { fg = palette.subtle },
            StatusLineAutoformatEnabled = { fg = palette.love },
            StatusLineDiagnosticError = { link = "DiagnosticError" },
            StatusLineDiagnosticHint = { link = "DiagnosticHint" },
            StatusLineDiagnosticInfo = { link = "DiagnosticInfo" },
            StatusLineDiagnosticWarning = { link = "DiagnosticWarn" },
            StatusLineDiagnosticNone = { fg = palette.subtle },
            StatusLineDivider = { fg = palette.muted },
            StatusLineFileBaseName = { fg = palette.text },
            StatusLineFileBaseNameModified = { fg = palette.text },
            StatusLineFileDirectory = { fg = palette.subtle },
            StatusLineFileDirectoryModified = { fg = palette.subtle },
            StatusLineFileModified = { fg = palette.gold },
            StatusLineFileReadonly = { fg = palette.love },
            StatusLineGitAdded = { fg = git_added_text_color },
            StatusLineGitBranch = { fg = palette.iris },
            StatusLineGitChanged = { fg = git_changed_text_color },
            StatusLineGitRemoved = { fg = git_removed_text_color },
            StatusLineGitNone = { fg = palette.subtle },
            StatusLineLSPText = { fg = palette.leaf },
            StatusLineModeCommand = { bg = palette.rose, fg = palette.base, bold = true },
            StatusLineModeCommandText = { bg = "NONE", fg = palette.rose, bold = true },
            StatusLineModeInsert = { bg = palette.gold, fg = palette.base, bold = true },
            StatusLineModeInsertText = { bg = "NONE", fg = palette.gold, bold = true },
            StatusLineModeNormal = { bg = palette.overlay, fg = palette.subtle, bold = true },
            StatusLineModeNormalText = { bg = "NONE", fg = palette.subtle, bold = true },
            StatusLineModeReplace = { bg = palette.pine, fg = palette.base, bold = true },
            StatusLineModeReplaceText = { bg = "NONE", fg = palette.pine, bold = true },
            StatusLineModeSelect = { bg = palette.love, fg = palette.base, bold = true },
            StatusLineModeSelectText = { bg = "NONE", fg = palette.love, bold = true },
            StatusLineModeTerminal = { bg = palette.pine, fg = palette.base, bold = true },
            StatusLineModeTerminalText = { bg = "NONE", fg = palette.pine, bold = true },
            StatusLineModeVisual = { bg = palette.iris, fg = palette.base, bold = true },
            StatusLineModeVisualText = { bg = "NONE", fg = palette.iris, bold = true },
            StatusLineModeCommandSubtle = { bg = c.desaturate(palette.rose_background, 10) },
            StatusLineModeInsertSubtle = { bg = c.desaturate(palette.gold_background, 10) },
            StatusLineModeNormalSubtle = { bg = palette.highlight_medium },
            StatusLineModeReplaceSubtle = { bg = c.desaturate(palette.pine_background, 10) },
            StatusLineModeSelectSubtle = { bg = c.desaturate(palette.love_background, 10) },
            StatusLineModeTerminalSubtle = { bg = c.desaturate(palette.pine_background, 10) },
            StatusLineModeVisualSubtle = { bg = c.desaturate(palette.iris_background, 10) },
            StatusLineNC = { fg = palette.muted, bg = palette.surface },
            StatusLineSectionA = { fg = palette.subtle, bg = palette.surface },
            StatusLineSectionAInactive = { fg = palette.muted, bg = palette.surface },
            StatusLineSectionB = { fg = palette.subtle, bg = palette.overlay },
            StatusLineSectionBInactive = { fg = palette.muted, bg = palette.overlay },
        },
        syntax = {
            Bold = { bold = true },
            Boolean = { fg = boolean_text_color },
            Character = { link = "String" },
            Comment = { fg = comment_text_color, italic = true },
            Conditional = { link = "Keyword" },
            Constant = { fg = constant_text_color },
            Define = { link = "PreProc" },
            Delimiter = { fg = punctuation_text_color },
            Error = { fg = palette.rose },
            Exception = { link = "Keyword" },
            Float = { link = "Number" },
            Function = { fg = function_text_color },
            Identifier = { fg = palette.text },
            Include = { link = "PreProc" },
            Italic = { italic = true },
            Keyword = { fg = keyword_text_color, italic = true },
            Label = { link = "Keyword" },
            Macro = { link = "PreProc" },
            Number = { fg = number_text_color },
            Operator = { fg = palette.subtle },
            PreCondit = { link = "PreProc" },
            PreProc = { fg = palette.iris },
            Repeat = { link = "Keyword" },
            Special = { fg = palette.subtle },
            SpecialChar = { link = "Special" },
            Statement = { link = "Keyword" },
            StorageClass = { link = "Type" },
            String = { link = "@string" },
            Structure = { link = "Keyword" },
            Tag = { fg = palette.foam },
            Todo = { fg = palette.gold },
            Type = { fg = type_text_color },
            Typedef = { link = "Type" },
            Underlined = { underline = true },
            diffAdded = { fg = git_added_text_color },
            diffChanged = { fg = git_changed_text_color },
            diffFile = { fg = palette.foam },
            diffIndexLine = { fg = palette.love },
            diffLine = { fg = palette.love },
            diffNewFile = { fg = palette.iris },
            diffOldFile = { fg = palette.gold },
            diffRemoved = { fg = git_removed_text_color },
        },
        telescope = {
            TelescopeBorder = { bg = float_background_color, fg = palette.highlight_high },
            TelescopeNormal = { link = "NormalFloat" },
            TelescopePromptCounter = { fg = palette.gold },
            TelescopeTitle = { link = "FloatTitle" },
        },
        treesitter = {
            ["@attribute"] = { fg = metadata_text_color },
            ["@attribute.builtin"] = { link = "@attribute" },
            ["@attribute.diff"] = { fg = palette.gold },
            ["@boolean"] = { fg = boolean_text_color },
            ["@character"] = { link = "@string" },
            ["@character.special"] = { link = "@character" },
            ["@comment"] = { fg = comment_text_color, italic = true },
            ["@comment.documentation"] = { fg = palette.leaf, italic = true },
            ["@comment.error"] = { fg = palette.rose, italic = true },
            ["@comment.info"] = { fg = palette.foam, italic = true },
            ["@comment.note"] = { fg = palette.iris, italic = true },
            ["@comment.todo"] = { fg = palette.gold, italic = true },
            ["@comment.warning"] = { fg = palette.gold, italic = true },
            ["@constant"] = { fg = constant_text_color },
            ["@constant.builtin"] = { link = "@constant" },
            ["@constant.macro"] = { link = "@constant" },
            ["@constructor"] = { link = "@function" },
            ["@function"] = { fg = function_text_color },
            ["@function.builtin"] = { link = "@function" },
            ["@function.call"] = { link = "@function" },
            ["@function.macro"] = { link = "@function" },
            ["@function.method"] = { link = "@function" },
            ["@function.method.call"] = { link = "@function" },
            ["@keyword"] = { fg = keyword_text_color, italic = true },
            ["@keyword.conditional"] = { link = "@keyword" },
            ["@keyword.conditional.ternary"] = { link = "@keyword" },
            ["@keyword.coroutine"] = { link = "@keyword" },
            ["@keyword.debug"] = { link = "@keyword" },
            ["@keyword.directive"] = { link = "@keyword" },
            ["@keyword.directive.define"] = { link = "@keyword" },
            ["@keyword.exception"] = { link = "@keyword" },
            ["@keyword.function"] = { link = "@keyword" },
            ["@keyword.import"] = { link = "@keyword" },
            ["@keyword.modifier"] = { link = "@keyword" },
            ["@keyword.operator"] = { link = "@keyword" },
            ["@keyword.repeat"] = { link = "@keyword" },
            ["@keyword.return"] = { link = "@keyword" },
            ["@keyword.type"] = { link = "@keyword" },
            ["@label"] = { fg = operator_text_color },
            ["@markup.italic"] = { italic = true },
            ["@markup.strikethrough"] = { strikethrough = true },
            ["@markup.strong"] = { bold = true },
            ["@markup.underline"] = { underline = true },
            ["@module"] = { link = "@variable" },
            ["@module.builtin"] = { link = "@variable" },
            ["@number"] = { fg = number_text_color },
            ["@number.float"] = { link = "@number" },
            ["@operator"] = { fg = operator_text_color },
            ["@parameter"] = { fg = parameter_text_color },
            ["@property"] = { fg = property_text_color },
            ["@punctuation"] = { fg = punctuation_text_color },
            ["@punctuation.bracket"] = { link = "@punctuation" },
            ["@punctuation.delimiter"] = { link = "@punctuation" },
            ["@punctuation.special"] = { link = "@punctuation" },
            ["@string"] = { fg = string_text_color },
            ["@string.documentation"] = { link = "@string" },
            ["@string.escape"] = { fg = palette.pine },
            ["@string.regexp"] = { link = "@string" },
            ["@string.special"] = { link = "@string" },
            ["@string.special.path"] = { link = "@string.special.url" },
            ["@string.special.symbol"] = { link = "@string.special.url" },
            ["@string.special.url"] = { fg = string_text_color, underline = true },
            ["@tag"] = { fg = keyword_text_color },
            ["@tag.attribute"] = { fg = property_text_color },
            ["@tag.builtin"] = { link = "@tag" },
            ["@tag.delimiter"] = { link = "@punctuation" },
            ["@type"] = { fg = type_text_color },
            ["@type.builtin"] = { link = "@type" },
            ["@type.definition"] = { link = "@type" },
            ["@variable"] = { fg = variable_text_color },
            ["@variable.builtin"] = { link = "@variable" },
            ["@variable.member"] = { link = "@variable" },
            ["@variable.parameter"] = { link = "@variable" },
            ["@variable.parameter.builtin"] = { link = "@variable" },
        },
        treesitter_context = {
            TreesitterContext = { bg = palette.surface },
            TreesitterContextLineNumber = { bg = palette.surface },
        },
        virt_column = {
            VirtColumn = { fg = guide_color },
        },
    }
end

local function terminal_highlights(palette)
    if palette.is_dark then
        return {
            black = c.lighten(palette.base, 10),
            black_bright = c.lighten(palette.base, 20),
            red = palette.rose,
            red_bright = c.lighten(palette.rose, 15),
            green = palette.leaf,
            green_bright = c.lighten(palette.leaf, 15),
            yellow = palette.gold,
            yellow_bright = c.lighten(palette.gold, 15),
            blue = palette.pine,
            blue_bright = c.lighten(palette.pine, 15),
            magenta = palette.iris,
            magenta_bright = c.lighten(palette.iris, 15),
            cyan = palette.foam,
            cyan_bright = c.lighten(palette.foam, 15),
            white = palette.subtle,
            white_bright = c.lighten(palette.subtle, 15),
        }
    else
        return {
            black = c.darken(palette.base, 10),
            black_bright = c.darken(palette.base, 20),
            red = palette.rose,
            red_bright = c.lighten(palette.rose, 15),
            green = palette.leaf,
            green_bright = c.lighten(palette.leaf, 15),
            yellow = palette.gold,
            yellow_bright = c.lighten(palette.gold, 15),
            blue = palette.pine,
            blue_bright = c.lighten(palette.pine, 15),
            magenta = palette.iris,
            magenta_bright = c.lighten(palette.iris, 15),
            cyan = palette.foam,
            cyan_bright = c.lighten(palette.foam, 15),
            white = palette.text,
            white_bright = c.lighten(palette.text, 15),
        }
    end
end

local function set_highlights(highlight)
    for group, hl in pairs(highlight) do
        for key, value in pairs(hl) do
            if key == "fg" or key == "bg" or key == "sp" then
                if type(value) == "table" then
                    hl[key] = c.hsl_to_hex(value)
                end
            end
        end
        vim.api.nvim_set_hl(0, group, hl)
    end
end

local function set_terminal_colors(terminal_colors)
    vim.g.terminal_color_0 = c.hsl_to_hex(terminal_colors.black)
    vim.g.terminal_color_1 = c.hsl_to_hex(terminal_colors.red)
    vim.g.terminal_color_2 = c.hsl_to_hex(terminal_colors.green)
    vim.g.terminal_color_3 = c.hsl_to_hex(terminal_colors.yellow)
    vim.g.terminal_color_4 = c.hsl_to_hex(terminal_colors.blue)
    vim.g.terminal_color_5 = c.hsl_to_hex(terminal_colors.magenta)
    vim.g.terminal_color_6 = c.hsl_to_hex(terminal_colors.cyan)
    vim.g.terminal_color_7 = c.hsl_to_hex(terminal_colors.white)
    vim.g.terminal_color_8 = c.hsl_to_hex(terminal_colors.black_bright)
    vim.g.terminal_color_9 = c.hsl_to_hex(terminal_colors.red_bright)
    vim.g.terminal_color_10 = c.hsl_to_hex(terminal_colors.green_bright)
    vim.g.terminal_color_11 = c.hsl_to_hex(terminal_colors.yellow_bright)
    vim.g.terminal_color_12 = c.hsl_to_hex(terminal_colors.blue_bright)
    vim.g.terminal_color_13 = c.hsl_to_hex(terminal_colors.magenta_bright)
    vim.g.terminal_color_14 = c.hsl_to_hex(terminal_colors.cyan_bright)
    vim.g.terminal_color_15 = c.hsl_to_hex(terminal_colors.white_bright)
end

local function set_all_highlights(hl, terminal_hl)
    for _, hls in pairs(hl) do
        set_highlights(hls)
    end
    set_terminal_colors(terminal_hl)
end

local M = {}

---@param theme string
---@return string
function M.ghostty_theme(theme)
    local palette = require("rose-pineish.palettes.rose-pineish-" .. theme)
    local hl = highlights(palette)
    local terminal_hl = terminal_highlights(palette)
    return require("themes.ghostty").generate(palette, hl, terminal_hl)
end

---@param theme string
function M.load(theme)
    local palette = require("rose-pineish.palettes.rose-pineish-" .. theme)
    local hl = highlights(palette)
    local terminal_hl = terminal_highlights(palette)
    set_all_highlights(hl, terminal_hl)
end

return M
