-- cool_name/lua/lush_theme/cool_name.lua
-- require lush
local lush = require('lush')

-- lush(), when given a spec, will parse it and return a table 
-- containing your color information.
-- We should return it for use in other files.
return lush(function()
  return {
    -- Define what vims Normal highlight group should look like
    Normal { bg = lush.hsl(208, 90, 30), fg = lush.hsl(208, 80, 80) },
    -- And make whitespace slightly darker than normal.
    -- Note you must define Normal before you try to use it.
    Whitespace { fg = Normal.fg.darken(40) },
    -- And make comments look the same, but with italic text
    Comment { Comment, gui="italic" },
    -- and clear all highlighting for CursorLine
    CursorLine { },
  }
end)
