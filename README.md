# gruvbox.nvim

A complete overhaul of the [gruvbox original theme](https://github.com/morhetz/gruvbox), based on both ellisonleao's [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim) and folke's [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) themes.

# Prerequisites

Neovim 0.9.0+

# Installing

## Using `lazy.nvim`

```lua
{ "pedrog14/gruvbox.nvim", lazy = false, priority = 1000, opts = {...} }
```

## Using `packer`

```lua
use { "pedrog14/gruvbox.nvim" }
```

## Using `vim-plug`

```vim
Plug 'pedrog14/gruvbox.nvim'
```

# Basic Usage

Inside your lua config:

```lua
vim.opt.background = "dark" -- or "light" for light mode
vim.cmd.colorscheme("gruvbox")
```

Inside `init.vim`:

```vim
set background=dark " or light if you want light mode
colorscheme gruvbox
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
    group_override = {}, --[[@type table<string, vim.api.keyset.highlight>]]
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

        comments      = {}, --[[@type vim.api.keyset.highlight]]
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

Please notice that the values on the overrides must follow the pattern that can be seen on [`synIDattr`](<https://neovim.io/doc/user/builtin.html#synIDattr()>).
