local color_palette = require("rose-pineish.colors")
local c = require("themes.color-utils")

local base = { 246, 24, 17 }
local text = { 245, 50, 91 }

local white = "#ffffff"

local rose = c.darken(c.saturate(color_palette.rose, 11), 8)
local pine = c.lighten(color_palette.pine, 9)

return {
    is_dark = true,
    base = base,
    surface = { 248, 24, 20 },
    overlay = { 248, 21, 26 },
    text = text,
    subtle = { 248, 15, 61 },
    muted = { 249, 12, 47 },
    white = white,
    love = color_palette.love,
    love_background = c.desaturate(c.darken(color_palette.love, 40), 30),
    gold = color_palette.gold,
    gold_background = c.desaturate(c.darken(color_palette.gold, 35), 25),
    rose = rose,
    rose_background = c.desaturate(c.darken(rose, 35), 25),
    pine = pine,
    pine_background = c.desaturate(c.darken(pine, 35), 25),
    foam = color_palette.foam,
    foam_background = c.desaturate(c.darken(color_palette.foam, 35), 25),
    iris = color_palette.iris,
    iris_background = c.desaturate(c.darken(color_palette.iris, 35), 25),
    leaf = color_palette.leaf,
    leaf_background = c.desaturate(c.darken(color_palette.leaf, 35), 15),
    highlight_low = { 245, 22, 20 },
    highlight_med = { 247, 16, 30 },
    highlight_high = { 249, 15, 38 },
    cursor_background = color_palette.love,
    cursor_text = white,
}