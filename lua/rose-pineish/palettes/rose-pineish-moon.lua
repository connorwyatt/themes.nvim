local color_palette = require("rose-pineish.colors")
local c = require("themes.color-utils")

local base = { 246, 24, 17 }
local text = { 245, 50, 91 }

local white = "#ffffff"

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
    rose = color_palette.rose,
    rose_background = c.desaturate(c.darken(color_palette.rose, 35), 25),
    pine = color_palette.pine,
    pine_background = c.desaturate(c.darken(color_palette.pine, 35), 25),
    foam = color_palette.foam,
    foam_background = c.desaturate(c.darken(color_palette.foam, 35), 25),
    iris = color_palette.iris,
    iris_background = c.desaturate(c.darken(color_palette.iris, 35), 25),
    leaf = color_palette.leaf,
    leaf_background = c.desaturate(c.darken(color_palette.leaf, 35), 15),
    highlight_low = { 245, 22, 20 },
    highlight_medium = { 247, 16, 30 },
    highlight_high = { 249, 15, 38 },
    cursor_background = color_palette.gold,
    cursor_text = base,
}
