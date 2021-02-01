-- paper2/lua/lush_theme/paper2.lua
-- require lush
local lush = require('lush')


-- Jblow type color: hsl(158, 62, 68)
-- Type { fg = lush.hsl(158, 62, 68) },
-- Type { fg = lush.hsl(117, 59, 78) },
-- Type { fg = lush.hsl(194, 53, 37) },
-- Type { fg = lush.hsl(127, 47, 75) },

-- the colortemplate we're working from:
-- Full name:   Paper
-- Short name:  paper
-- Author:      Yorick Peterse <yorick@yorickpeterse.com>
-- Website:     https://gitlab.com/yorickpeterse/paper.vim
-- Description: A light theme based on the color of paper notebooks.
-- License:     MPL 2.0

-- Neovim:     yes
-- Variant:    gui 256
-- Background: light

-- ; Colors
-- Color: background #f2eede ~
-- Color: black #000000 ~
-- Color: blue #1e6fcc ~
-- Color: green #216609 ~
-- Color: lgreen #dfeacc ~
-- Color: red #cc3e28 ~
-- Color: grey #777777 ~
-- Color: dgrey #555555 ~
-- Color: lgrey1 #d8d5c7 ~
-- Color: lgrey2 #bfbcaf ~
-- Color: lgrey3 #aaaaaa ~
-- Color: yellow #b58900 ~
-- Color: lyellow #f2de91 ~
-- Color: orange #a55000 ~
-- Color: purple #5c21a5 ~
-- Color: white #ffffff ~
-- Color: cyan #158c86 ~

-- ; Terminal colors
-- Term Colors: black red green yellow blue purple cyan lgrey3
-- Term Colors: dgrey red green yellow blue purple cyan lgrey3

-- ; Generic highlight groups
-- ColorColumn none lgrey1
-- Comment grey none
-- Conceal none none
-- Constant black none
-- Cursor none lgrey1
-- CursorLineNR black none bold
-- Directory purple none
-- ErrorMsg red none bold
-- FoldColumn black background
-- Identifier black none
-- Include black none bold
-- Keyword black none bold
-- LineNr black none
-- Macro orange none
-- MatchParen none none bold
-- MoreMsg black none
-- NonText background none
-- Normal black background
-- Number blue none
-- Operator black none
-- Pmenu black lgrey1
-- PmenuSel black lgrey2 bold
-- PreProc black none
-- Question black none
-- Regexp orange none
-- Search none lyellow
-- Special black none
-- SpellBad red none bold,underline
-- SpellCap purple none underline
-- SpellLocal green none underline
-- SpellRare purple none underline
-- StatusLine black lgrey2
-- StatusLineNC dgrey lgrey1
-- String green none
-- TabLine dgrey lgrey2
-- TabLineFill black lgrey2
-- TabLineSel black background bold
-- Title black none bold
-- Todo grey none bold
-- VertSplit lgrey2 none
-- WarningMsg orange none bold

-- Boolean -> Keyword
-- Character -> String
-- CursorLine -> Cursor
-- Error -> ErrorMsg
-- Folded -> Comment
-- Label -> Keyword
-- PmenuThumb -> PmenuSel
-- PreCondit -> Macro
-- SignColumn -> FoldColumn
-- SpecialKey -> Number
-- Statement -> Keyword
-- StorageClass -> Keyword
-- Type -> Keyword
-- Visual -> Cursor
-- WildMenu -> PmenuSel

-- ; These highlight groups can be used for statuslines, for example when
-- ; displaying ALE warnings and errors.
-- WhiteOnOrange white orange
-- WhiteOnYellow white yellow
-- WhiteOnRed white red

-- ; ALE
-- ALEError red none bold
-- ALEErrorSign red none bold
-- ALEWarning orange none bold
-- ALEWarningSign orange none bold

-- ; CSS
-- cssClassName -> Keyword
-- cssColor -> Number
-- cssIdentifier -> Keyword
-- cssImportant -> Keyword
-- cssProp -> Identifier
-- cssTagName -> Keyword

-- ; Diffs
-- DiffAdd none lgreen
-- DiffChange none none
-- DiffDelete red none
-- DiffText none lyellow

-- diffAdded -> DiffAdd
-- diffChanged -> DiffChange
-- diffRemoved -> DiffDelete
-- diffFile black none bold
-- diffLine blue none

-- ; Dot
-- dotKeyChar -> Operator

-- ; Fugitive
-- FugitiveblameTime blue none
-- FugitiveblameHash purple none

-- ; Git commit messages
-- gitCommitOverflow -> ErrorMsg
-- gitCommitSummary -> String

-- ; HAML
-- hamlClass black none
-- hamlId black none
-- hamlTag black none bold
-- hamlDocType -> Comment
-- htmlArg -> Identifier

-- ; HTML
-- htmlTag black none bold
-- htmlLink -> Directory
-- htmlScriptTag -> htmlTag
-- htmlSpecialTagName -> htmlTag
-- htmlTagName -> htmlTag

-- ; Inko
-- inkoCommentBold grey none bold
-- inkoCommentInlineUrl -> Number
-- inkoCommentItalic grey none italic
-- inkoCommentTitle grey none bold
-- inkoInstanceVariable -> Directory
-- inkoKeywordArgument -> Regexp

-- ; Java
-- javaAnnotation -> Directory
-- javaCommentTitle -> javaComment
-- javaDocParam -> Todo
-- javaDocTags -> Todo
-- javaExternal -> Keyword
-- javaStorageClass -> Keyword

-- ; Javascript
-- JavaScriptNumber -> Number
-- javaScriptBraces -> Operator
-- javaScriptFunction -> Keyword
-- javaScriptIdentifier -> Keyword
-- javaScriptMember -> Identifier

-- ; JSON
-- jsonKeyword -> String

-- ; Make
-- makeTarget -> Function

-- ; Markdown
-- markdownCode -> markdownCodeBlock
-- markdownCodeBlock -> Comment
-- markdownListMarker -> Keyword
-- markdownOrderedListMarker -> Keyword

-- ; netrw
-- netrwClassify -> Identifier

-- ; Perl
-- perlPackageDecl -> Identifier
-- perlStatementInclude -> Statement
-- perlStatementPackage -> Statement
-- podCmdText -> Todo
-- podCommand -> Comment
-- podVerbatimLine -> Todo

-- ; Ruby
-- rubyAttribute -> Identifier
-- rubyClass -> Keyword
-- rubyClassVariable -> rubyInstancevariable
-- rubyConstant -> Constant
-- rubyDefine -> Keyword
-- rubyFunction -> Function
-- rubyInstanceVariable -> Directory
-- rubyMacro -> Identifier
-- rubyModule -> rubyClass
-- rubyRegexp -> Regexp
-- rubyRegexpCharClass -> Regexp
-- rubyRegexpDelimiter -> Regexp
-- rubyRegexpQuantifier -> Regexp
-- rubyRegexpSpecial -> Regexp
-- rubyStringDelimiter -> String
-- rubySymbol -> Regexp

-- ; Rust
-- rustCommentBlockDoc -> Comment
-- rustCommentLineDoc -> Comment
-- rustFuncCall -> Identifier
-- rustModPath -> Identifier

-- ; Python
-- pythonOperator -> Keyword

-- ; SASS
-- sassClass -> cssClassName
-- sassId -> cssIdentifier

-- ; Shell
-- shFunctionKey -> Keyword

-- ; SQL
-- sqlKeyword -> Keyword

-- ; TypeScript
-- typescriptBraces -> Operator
-- typescriptEndColons -> Operator
-- typescriptExceptions -> Keyword
-- typescriptFuncKeyword -> Keyword
-- typescriptFunction -> Function
-- typescriptIdentifier -> Identifier
-- typescriptLogicSymbols -> Operator

-- ; Vimscript
-- VimCommentTitle -> Todo
-- VimIsCommand -> Constant
-- vimGroup -> Constant
-- vimHiGroup -> Constant

-- ; XML
-- xmlAttrib -> Identifier
-- xmlTag -> Identifier
-- xmlTagName -> Identifier

-- ; YAML
-- yamlPlainScalar -> String

-- ; YARD
-- yardComment -> Comment
-- yardType -> Todo
-- yardTypeList -> Todo
-- --- --- end colortemplate --- --- ---


-- lush(), when given a spec, will parse it and return a table 
-- containing your color information.
-- We should return it for use in other files.
return lush(function()
    -- taking these from Yorick Peterse's paper theme
    -- local background = lush.hsl(48, 43, 91)
    -- local black = lush.hsl('#000000')
    --
    local background = lush.hsl(46, 81, 95)
    local black = lush.hsl('#000000')
    -- local blue = lush.hsl('#1e6fcc')
    local blue = lush.hsl(223, 43, 50)
    local green = lush.hsl('#216609')
    local lgreen = lush.hsl('#dfeacc')
    local red = lush.hsl('#cc3e28')
    local grey = lush.hsl('#777777')
    local dgrey = lush.hsl('#555555')
    local lgrey1 = lush.hsl('#d8d5c7')
    local lgrey2 = lush.hsl('#bfbcaf')
    local lgrey3 = lush.hsl('#aaaaaa')
    local yellow = lush.hsl('#b58900')
    local lyellow = lush.hsl('#f2de91')
    local orange = lush.hsl('#a55000')
    local purple = lush.hsl('#5c21a5')
    local white = lush.hsl('#ffffff')
    local cyan = lush.hsl('#158c86')

  return {
    -- Normal { fg = black, bg=background },
    Normal { fg = black, bg=background },
    -- Whitespace { fg = Normal.fg.darken(40) },
    Keyword { fg = Normal.fg, gui = "bold" },
    -- Keyword { fg = Normal.fg.rotate(90) },

    ColorColumn { bg=lgrey1 },
    Comment { fg = grey },
    Conceal {},
    Constant { fg = black },
    Cursor { bg=lgrey1, fg = Normal.fg },
    CursorLineNR { fg = black, bg = Normal.bg },
    Directory { fg = green },
    ErrorMsg { fg = red },
    FoldColumn { Normal },

    Identifier { Normal },
    Include { Normal },
    LineNr { Normal },
    Macro { fg = orange },
    MatchParen { Normal },
    MoreMsg { Normal },
    NonText { fg = Normal.bg.darken(20), bg=Normal.bg },
    Number { fg = blue },
    Operator { Normal },
    Pmenu { fg = black, bg=lgrey1 },
    PmenuSel { fg = black, bg=lgrey2 },
    PreProc  { fg = black },
    Question { fg = black},
    Regexp { fg = orange },
    Search { bg=lyellow },
    Special { fg = black},
    SpellBad { fg = red},
    SpellCap { fg = purple, gui="underline" },
    SpellLocal { fg = green, gui="underline" },
    SpellRare { fg = purple, gui="underline" },
    StatusLine { fg = black, bg=lgrey2 },
    StatusLineNC { fg = dgrey, bg=lgrey1 },
    String { fg = green },
    TabLine { fg = dgrey, bg=lgrey2 },
    TabLineFill { fg = black, bg=lgrey2 },
    TabLineSel { Normal },
    Title { fg = black},
    Todo { fg = grey },
    VertSplit { fg = lgrey2 },
    WarningMsg { fg = orange },
     
    Boolean { Keyword },
    Character { String },
    CursorLine { bg = Normal.bg.darken(7) },
    Error { ErrorMsg },
    Folded { Comment },
    Label { Keyword },
    PmenuThumb { PmenuSel },
    PreCondit { Macro },
    SignColumn { FoldColumn },
    SpecialKey { Number },
    Statement { Keyword },
    StorageClass { Keyword },
    Type { Keyword },
    Visual { Cursor },
    WildMenu { PmenuSel },


    -- -- These groups are not listed as default vim groups,
    -- -- but they are defacto standard group names for syntax highlighting.
    -- -- commented out groups should chain up to their "preferred" group by
    -- -- default,
    -- -- Uncomment and edit if you want more specific syntax highlighting.

    -- Number         { Constant }, --   a number constant: 234, 0xff
    Float          { }, --    a floating point constant: 2.3e10

    Function       { Normal }, -- function name (also: methods for classes)

    Conditional    { Keyword }, --  if, then, else, endif, switch, etc.
    Repeat         { Keyword }, --   for, do, while, etc.
    -- Operator       { Normal }, -- "sizeof", "+", "*", etc.
    Exception      { }, --  try, catch, throw

    Define         { }, --   preprocessor #define

    Structure      { }, --  struct, union, enum, etc.
    Typedef        { }, --  A typedef

    -- Special        { }, -- (preferred) any special symbol
    -- SpecialChar    { }, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    -- Delimiter      { }, --  character that needs attention
    -- SpecialComment { }, -- special things inside a comment
    -- Debug          { }, --    debugging statements

    -- Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    -- Bold       { gui = "bold" },
    -- Italic     { gui = "italic" },

    -- -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|
    -- Error          { }, -- (preferred) any erroneous construct
    -- Todo           { }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- -- These groups are for the native LSP client. Some other LSP clients may use
    -- -- these groups, or use their own. Consult your LSP client's documentation.
    --
    TSFunction           { Normal }, -- For function (calls and definitions).
    TSNumber           { Constant }, -- For function (calls and definitions).

    GoDecimalInt { fg = blue },

    LspDiagnosticsError               { fg = black, bg = red }, -- used for "Error" diagnostic virtual text
    LspDiagnosticsErrorSign           { LspDiagnosticsError }, -- used for "Error" diagnostic signs in sign column
    LspDiagnosticsErrorFloating       { LspDiagnosticsError }, -- used for "Error" diagnostic messages in the diagnostics float
    LspDiagnosticsWarning             {  LspDiagnosticsError }, -- used for "Warning" diagnostic virtual text
    LspDiagnosticsWarningSign         { LspDiagnosticsError }, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsWarningFloating     {   LspDiagnosticsError }, -- used for "Warning" diagnostic messages in the diagnostics float
    LspDiagnosticsInformation         { LspDiagnosticsError}, -- used for "Information" diagnostic virtual text
    LspDiagnosticsInformationSign     {LspDiagnosticsError }, -- used for "Information" signs in sign column
    LspDiagnosticsInformationFloating { LspDiagnosticsError }, -- used for "Information" diagnostic messages in the diagnostics float
    LspDiagnosticsHint                {LspDiagnosticsError  }, -- used for "Hint" diagnostic virtual text
    LspDiagnosticsHintSign            {LspDiagnosticsError  }, -- used for "Hint" diagnostic signs in sign column
    LspDiagnosticsHintFloating        {LspDiagnosticsError  }, -- used for "Hint" diagnostic messages in the diagnostics float
    LspReferenceText                  {LspDiagnosticsError  }, -- used for highlighting "text" references
    LspReferenceRead                  {LspDiagnosticsError  }, -- used for highlighting "read" references
    LspReferenceWrite                 {LspDiagnosticsError   }, -- used for highlighting "write" references
  }

end)

-- let s:bg        = ['#032226', 0]
-- " let s:bg        = ['#042629', 0]
-- " let s:fg        = ['#b7a894', 0]
-- let s:fg        = ['#b7a894', 0]
-- " let s:brown           = { "gui": "#a39077", "cterm": "12"   }


-- let s:comment   = ['#43a73f', 0]
-- " let s:comment   = ['#148b7b', 0]
-- " too bright white
-- " let s:keyword   = ['#edf4f8', 0]
-- let s:keyword   = ['#e0e3e4', 0]
-- let s:type      = ['#89be86', 0]
-- let s:statement = ['#89be86',0]
-- let s:literal   = ['#72bda5',0]
-- " a little too dark
-- " let s:string    = ['#b3b0b2',0]
-- let s:string    = ['#32a193',0]
