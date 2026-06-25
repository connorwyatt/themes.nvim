local c = require("themes.color-utils")

local M = {}

local terminal_keys = {
    "black",
    "red",
    "green",
    "yellow",
    "blue",
    "magenta",
    "cyan",
    "white",
    "black_bright",
    "red_bright",
    "green_bright",
    "yellow_bright",
    "blue_bright",
    "magenta_bright",
    "cyan_bright",
    "white_bright",
}

local function to_hex(value)
    if type(value) == "table" then
        return c.hsl_to_hex(value)
    end
    return value
end

---@param palette table
---@param hl table
---@param terminal_hl table
---@return string
function M.generate(palette, hl, terminal_hl)
    local lines = {}

    for index, key in ipairs(terminal_keys) do
        lines[#lines + 1] = string.format("palette = %d=%s", index - 1, c.hsl_to_hex(terminal_hl[key]))
    end

    lines[#lines + 1] = "background=" .. c.hsl_to_hex(palette.base)
    lines[#lines + 1] = "foreground=" .. c.hsl_to_hex(palette.text)
    lines[#lines + 1] = "cursor-color=" .. to_hex(hl.editor.Cursor.bg)
    lines[#lines + 1] = "cursor-text=" .. to_hex(hl.editor.Cursor.fg)
    lines[#lines + 1] = "selection-background=" .. c.hsl_to_hex(terminal_hl.black)
    lines[#lines + 1] = "selection-foreground=" .. c.hsl_to_hex(palette.text)

    return table.concat(lines, "\n") .. "\n"
end

return M