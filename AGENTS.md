# AGENTS.md

This document provides guidance for AI agents and human contributors working on themes.nvim.

## Project Overview

themes.nvim is a Neovim colorscheme plugin that hosts multiple independent theme families. Each family is a self-contained module with its own palettes, accent colors, and highlight logic.

## Architecture

- **Theme families**: Each family lives under `lua/<family>/` with its own loader, palettes, and highlight definitions. Colorscheme entry points in `colors/` use the `<family>-<variant>` naming convention (e.g. `sakura-day`, `flowers-night`).
- **Palette-driven design**: Within a family, each variant is a small data file that returns a table of HSL colors. The family's shared highlight logic consumes that palette.
- **HSL color system**: Colorschemes operate in HSL space. Conversion and manipulation helpers live in the shared `lua/themes/color-utils.lua` module.

## Adding a New Theme Family

1. Create a new module at `lua/<family>/` with its own `init.lua`, palette directory, and any shared color utilities.
2. Add colorscheme entry points at `colors/<family>-<variant>.lua` that call into the new module's loader.
3. Keep highlight logic inside the family module — do not add family-specific overrides in palette files.

## Modifying Theme Visual Behavior

Make changes in the `highlights(palette)` and `terminal_highlights(palette)` functions in `lua/<family>/init.lua` (e.g. `lua/sakura/init.lua`, `lua/flowers/init.lua`). These functions are the authoritative place for all theme highlight groups and terminal color mappings.

Avoid duplicating highlight logic or creating variant-specific overrides in palette files.

## Exporting Themes to Ghostty

A minimal Ghostty theme generator exists (currently commented out) at the end of `M.load` in `lua/<family>/init.lua`.

To generate a Ghostty theme:

1. Temporarily uncomment the print statements.
2. Load the target theme in Neovim (e.g. via `:colorscheme`).
3. Capture the generated output.
4. Re-comment the generator block.
5. Write the output to `~/.config/ghostty/themes/<family>-<name>`.

## Coding Conventions

- Keep variant palettes minimal - change only what is necessary (usually just `base`).
- Prefer using the color utilities (`darken`, `lighten`, `saturate`, `desaturate`, etc.) over hard-coded values.
- All plugin-specific and syntax highlighting logic belongs in the shared functions for that theme family.

## File Layout

- `lua/<family>/init.lua` — Family loader and highlight definitions
- `lua/<family>/palettes/` — Variant color tables (HSL)
- `lua/<family>/colors.lua` — Shared accent color definitions (per family, where applicable)
- `lua/themes/color-utils.lua` — Shared HSL conversion and manipulation helpers
- `colors/` — Thin Neovim colorscheme entry points (one per variant)
