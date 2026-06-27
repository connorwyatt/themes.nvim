local color_palette = require("rose-pineish.colors")
local c = require("themes.color-utils")

local base = { 32, 57, 95 }
local text = { 248, 19, 32 }

local white = "#ffffff"

local overlay = { 28, 40, 92 }

return {
    is_dark = false,
    base = base,
    surface = { 35, 100, 98 },
    overlay = overlay,
    scrollbar_thumb = c.darken(overlay, 6),
    text = text,
    subtle = { 248, 12, 52 },
    muted = { 257, 9, 61 },
    white = white,
    love = color_palette.love,
    love_background = c.desaturate(c.lighten(color_palette.love, 27), 5),
    gold = color_palette.gold,
    gold_background = c.lighten(color_palette.gold, 40),
    rose = color_palette.rose,
    rose_background = c.lighten(color_palette.rose, 25),
    pine = color_palette.pine,
    pine_background = c.lighten(color_palette.pine, 25),
    foam = color_palette.foam,
    foam_background = c.lighten(color_palette.foam, 25),
    iris = color_palette.iris,
    iris_background = c.lighten(color_palette.iris, 25),
    leaf = color_palette.leaf,
    leaf_background = c.lighten(color_palette.leaf, 35),
    highlight_low = c.darken(base, 3),
    highlight_medium = c.darken(base, 5),
    highlight_high = c.darken(base, 10),
    cursor_background = color_palette.gold,
    cursor_text = text,
}
