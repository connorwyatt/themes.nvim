local color_palette = require("rose-pineish.colors")
local c = require("themes.color-utils")

local base = { 249, 22, 12 }
local text = { 245, 50, 91 }

local white = "#ffffff"

local overlay = { 248, 25, 18 }

return {
    is_dark = true,
    base = base,
    surface = { 247, 23, 15 },
    overlay = overlay,
    scrollbar_thumb = c.lighten(overlay, 10),
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
    highlight_low = { 244, 18, 15 },
    highlight_medium = { 249, 15, 28 },
    highlight_high = { 248, 13, 36 },
    cursor_background = color_palette.gold,
    cursor_text = base,
}
