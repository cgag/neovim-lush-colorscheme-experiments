-- cool_name/lua/lush_theme/cool_name.lua
-- require lush
local lush = require('lush')

-- lush(), when given a spec, will parse it and return a table 
-- containing your color information.
-- We should return it for use in other files.
return lush(function()
  return {
    Normal { 
        -- bg = lush.hsl(204, 95, 7),
        -- bg = lush.hsl(193, 95, 7),
        bg = lush.hsl(187, 77, 8),
        -- fg = lush.hsl(39, 22, 48),
        -- fg = lush.hsl(37, 24, 63),
        fg = lush.hsl(55, 10, 58),
    },
    Whitespace { fg = Normal.fg.darken(40) },
    Comment { fg = lush.hsl(145,0,51) },
    -- Keyword { fg = lush.hsl(100,100,100) },
    -- Keyword { fg = lush.hsl(30,10,92) },
    Keyword { fg = lush.hsl(30,10,92) },
    -- Keyword { fg = Normal.fg.rotate(90) },
    CursorLine { bg = Normal.bg.lighten(2) },
    Number { Normal },
    LineNr       { bg = Normal.bg.da(10), fg = Normal.bg.li(14) }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CdarkenursorLineNr { bg = CursorLine.bg, fg = Normal.fg.ro(180) }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.

    search_base  { bg = lush.hsl(52, 52, 52), fg = lush.hsl(52, 10, 10) },
    Search       { search_base },
    IncSearch    { bg = search_base.bg.rotate(-20), fg = search_base.fg.darken(90) },

    FoldColumn { Normal },
    Special { Normal },
    -- Jblow type color: hsl(158, 62, 68)
    -- Type { fg = lush.hsl(158, 62, 68) },
    -- Type { fg = lush.hsl(117, 59, 78) },
    Type { fg = lush.hsl(112, 53, 78) },
    -- Type { fg = lush.hsl(127, 47, 75) },


    NormalFloat  { }, -- Normal text in floating windows.
    ColorColumn  { }, -- used for the columns set with 'colorcolumn'
    Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       { }, -- character under the cursor
    lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    Directory    { Type }, -- directory names (and other special names in listings)
    DiffAdd      { }, -- diff mode: Added line |diff.txt|
    DiffChange   { }, -- diff mode: Changed line |diff.txt|
    DiffDelete   { }, -- diff mode: Deleted line |diff.txt|
    DiffText     { }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    TermCursor   { }, -- cursor in a focused terminal
    TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg     { }, -- error messages on the command line
    VertSplit    { }, -- the column separating vertically split windows
    Folded       { }, -- line used for closed folds
    -- this is broken soehow -- FoldColumn   { }, -- 'foldcolumn'
    SignColumn   { }, -- column where |signs| are displayed
    Substitute   { }, -- |:substitute| replacement text highlighting
    MatchParen   { }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea      { }, -- Area for messages and cmdline
    MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { }, -- |more-prompt|
    NonText      { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    NormalNC     { }, -- normal text in non-current windows
    Pmenu        { }, -- Popup menu: normal item.
    PmenuSel     { }, -- Popup menu: selected item.
    PmenuSbar    { }, -- Popup menu: scrollbar.
    PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
    Question     { }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.

    SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace| SpellBad  Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.  SpellCap  Word that should start with a capital. |spell| Combined with the highlighting used otherwise.  SpellLocal  Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    -- StatusLine   { }, -- status line of current window
    -- StatusLineNC { }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { }, -- tab pages line, not active tab page label
    TabLineFill  { }, -- tab pages line, where there are no labels
    TabLineSel   { }, -- tab pages line, active tab page label
    Title        { }, -- titles for output from ":set all", ":autocmd" etc.
    Visual       { }, -- Visual mode selection
    VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { }, -- warning messages
    WildMenu     { }, -- current match in 'wildmenu' completion

    -- -- These groups are not listed as default vim groups,
    -- -- but they are defacto standard group names for syntax highlighting.
    -- -- commented out groups should chain up to their "preferred" group by
    -- -- default,
    -- -- Uncomment and edit if you want more specific syntax highlighting.

    -- Constant       { fg = lush.hsl(180, 64, 76) }, -- (preferred) any constant
    -- Constant       { fg = lush.hsl(179, 39, 65) }, -- (preferred) any constant
    Constant       { fg = lush.hsl(181, 59, 73) }, -- (preferred) any constant
    -- Constant       { fg = lush.hsl(169, 70, 77) }, -- (preferred) any constant
    String       { fg = Constant.fg.lighten(20) }, -- (preferred) any constant
    Character      { }, --  a character constant: 'c', '\n'
    -- Number         { Constant }, --   a number constant: 234, 0xff
    Boolean        { Constant }, --  a boolean constant: TRUE, false
    Float          { }, --    a floating point constant: 2.3e10

    Identifier     { Normal }, -- (preferred) any variable name
    Function       { Normal }, -- function name (also: methods for classes)

    Statement      { }, -- (preferred) any statement
    Conditional    { Keyword }, --  if, then, else, endif, switch, etc.
    Repeat         { Keyword }, --   for, do, while, etc.
    Label          { }, --    case, default, etc.
    Operator       { Normal }, -- "sizeof", "+", "*", etc.
    Exception      { }, --  try, catch, throw

    PreProc        { }, -- (preferred) generic Preprocessor
    Include        { }, --  preprocessor #include
    Define         { }, --   preprocessor #define
    PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

    StorageClass   { }, -- static, register, volatile, etc.
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

    LspDiagnosticsError               { fg = lush.hsl(9,51,36) }, -- used for "Error" diagnostic virtual text
    LspDiagnosticsErrorSign           { LspDiagnosticsError }, -- used for "Error" diagnostic signs in sign column
    LspDiagnosticsErrorFloating       { LspDiagnosticsError }, -- used for "Error" diagnostic messages in the diagnostics float
    LspDiagnosticsWarning             {  LspDiagnosticsError }, -- used for "Warning" diagnostic virtual text
    -- LspDiagnosticsWarningSign         { }, -- used for "Warning" diagnostic signs in sign column
    -- LspDiagnosticsWarningFloating     { }, -- used for "Warning" diagnostic messages in the diagnostics float
    -- LspDiagnosticsInformation         { }, -- used for "Information" diagnostic virtual text
    -- LspDiagnosticsInformationSign     { }, -- used for "Information" signs in sign column
    -- LspDiagnosticsInformationFloating { }, -- used for "Information" diagnostic messages in the diagnostics float
    -- LspDiagnosticsHint                { }, -- used for "Hint" diagnostic virtual text
    -- LspDiagnosticsHintSign            { }, -- used for "Hint" diagnostic signs in sign column
    -- LspDiagnosticsHintFloating        { }, -- used for "Hint" diagnostic messages in the diagnostics float
    -- LspReferenceText                  { }, -- used for highlighting "text" references
    -- LspReferenceRead                  { }, -- used for highlighting "read" references
    -- LspReferenceWrite                 { }, -- used for highlighting "write" references
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
