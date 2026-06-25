package.path = "./lua/?.lua;./lua/?/init.lua;" .. package.path

local ghostty_dir = assert(arg[1], "usage: theme-exporter.lua <ghostty-dir> <bin-dir>")
local bin_dir = assert(arg[2], "usage: theme-exporter.lua <ghostty-dir> <bin-dir>")

os.execute('mkdir -p "' .. ghostty_dir .. '"')
os.execute('mkdir -p "' .. bin_dir .. '"')

local light_themes = {}
local dark_themes = {}

for path in io.popen("ls colors/*.lua 2>/dev/null"):lines() do
    local name = path:match("([^/]+)%.lua$")
    local file = assert(io.open(path, "r"))
    local family, variant = file:read("*a"):match('require%("([^"]+)"%).load%("([^"]+)"%)')
    file:close()
    assert(family, "could not parse colorscheme: " .. path)

    local palette = require(family .. ".palettes." .. name)
    local ghostty_path = ghostty_dir .. "/" .. name
    local out = assert(io.open(ghostty_path, "w"))
    out:write(require(family).ghostty_theme(variant))
    out:close()
    print("wrote " .. ghostty_path)

    if palette.is_dark then
        dark_themes[#dark_themes + 1] = name
    else
        light_themes[#light_themes + 1] = name
    end
end

table.sort(light_themes)
table.sort(dark_themes)

local function write_theme_list(filename, themes)
    local list_path = bin_dir .. "/" .. filename
    local list = assert(io.open(list_path, "w"))
    list:write(table.concat(themes, "\n") .. (themes[1] and "\n" or ""))
    list:close()
    print("wrote " .. list_path)
end

write_theme_list("themes-light.txt", light_themes)
write_theme_list("themes-dark.txt", dark_themes)