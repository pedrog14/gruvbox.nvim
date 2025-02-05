# Gruvbox.nvim

A complete overhaul of the gruvbox original theme, based on both ellisonleao's [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim) and folke's [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) themes.

# Prerequisites

Neovim 0.9.0+

# Installing

## Using `packer`

```lua
use { "pedrog14/gruvbox.nvim" }
```

## Using `lazy.nvim`

```lua
{ "pedrog14/gruvbox.nvim", lazy = false, priority = 1000, opts = {...} }
```

## Using `vim-plug`

```vim
Plug 'pedrog14/gruvbox.nvim'
```

# Basic Usage

Inside `init.vim`

```vim
set background=dark " or light if you want light mode
colorscheme gruvbox
```

Inside `init.lua`

```lua
vim.opt.background = "dark" -- or "light" for light mode
vim.cmd.colorscheme("gruvbox")
```

# Configuration

The default settings for gruvbox are:

```lua
{
    cache = true,
    contrast = nil, --[[@type GruvboxContrast]]
    dim_inactive = false,
    terminal_colors = true,
    transparent_mode = false,
    color_override = {}, --[[@type GruvboxColors]]
    group_override = {}, --[[@type GruvboxHighlights]]
    plugins = {
        all = package.loaded.lazy == nil,
        auto = true,
    },
    -- stylua: ignore
    style = {
        bold          = true,
        italic        = true,
        reverse       = true,
        strikethrough = true,
        undercurl     = true,
        underline     = true,

        comments      = { italic = true }, --[[@type vim.api.keyset.highlight]]
        indent        = {}, --[[@type vim.api.keyset.highlight]]
        operators     = {}, --[[@type vim.api.keyset.highlight]]
        selection     = {}, --[[@type vim.api.keyset.highlight]]
        signs         = {}, --[[@type vim.api.keyset.highlight]]
        strings       = {}, --[[@type vim.api.keyset.highlight]]
        tabline       = {}, --[[@type vim.api.keyset.highlight]]
    },
}
```

**VERY IMPORTANT**: Make sure to call setup() **BEFORE** calling the colorscheme command, to use your custom configs!

## Overriding

### Palette

You can specify your own colors. For example:

```lua
{
    color_override = {
        bg0 = "#000000"
    }
}
```

### Highlight groups

If you don't enjoy the current color for a specific highlight group, now you can just override it in the setup. For example:

```lua
{
    group_override = {
        SignColumn = { bg = "#ff9900" }
    }
}
```

It also works with treesitter groups and lsp semantic highlight tokens:

```lua
{
    group_override = {
        ["@lsp.type.method"] = { bg = "#ff9900" },
        ["@comment.lua"] = { bg = "#000000" },
    }
}
```

Please note that the override values must follow the attributes from the highlight group map \([vim.api.keyset.highlight](<https://neovim.io/doc/user/api.html#nvim_set_hl()>)\):

Other values can be seen in [`synIDattr`](<https://neovim.io/doc/user/builtin.html#synIDattr()>)
