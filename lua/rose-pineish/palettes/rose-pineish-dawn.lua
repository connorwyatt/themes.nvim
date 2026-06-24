local color_palette = require("rose-pineish.colors")
local c = require("themes.color-utils")

local base = { 32, 57, 95 }
local text = { 248, 19, 32 }

local white = "#ffffff"

local love = c.darken(c.desaturate(color_palette.love, 41), 13)
local gold = c.darken(c.desaturate(color_palette.gold, 7), 16)
local rose = c.desaturate(c.darken(color_palette.rose, 16), 2)
local pine = c.saturate(c.darken(color_palette.pine, 4), 4)
local foam = c.darken(c.desaturate(color_palette.foam, 13), 25)
local iris = c.darken(c.desaturate(color_palette.iris, 36), 21)
local leaf = c.darken(c.desaturate(color_palette.leaf, 2), 15)

return {
    is_dark = false,
    base = base,
    surface = { 35, 100, 98 },
    overlay = { 28, 40, 92 },
    text = text,
    subtle = { 248, 12, 52 },
    muted = { 257, 9, 61 },
    white = white,
    love = love,
    love_background = c.lighten(love, 25),
    gold = gold,
    gold_background = c.lighten(gold, 40),
    rose = rose,
    rose_background = c.lighten(rose, 30),
    pine = pine,
    pine_background = c.lighten(pine, 25),
    foam = foam,
    foam_background = c.lighten(foam, 25),
    iris = iris,
    iris_background = c.lighten(iris, 25),
    leaf = leaf,
    leaf_background = c.lighten(leaf, 35),
    highlight_low = { 25, 35, 93 },
    highlight_med = { 10, 9, 86 },
    highlight_high = { 315, 4, 80 },
    cursor_background = love,
    cursor_text = white,
}