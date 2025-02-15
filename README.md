# gruvbox.nvim

A complete overhaul of the [gruvbox original theme](https://github.com/morhetz/gruvbox), based on both ellisonleao's [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim) and folke's [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) themes.

<table width="100%">
    <tr>
        <th colspan=3>Dark</th>
    </tr>
    <tr>
        <th>Hard</th>
        <th>Medium</th>
        <th>Soft</th>
    </tr>
    <tr>
        <th width="33%">
            <img src="https://github.com/user-attachments/assets/0a906edb-638b-4c34-ac97-f2f116226889"/>
        </th>
        <th width="33%">
            <img src="https://github.com/user-attachments/assets/c7d584ea-8682-4bc7-8235-ca97b41ddf34"/>
        </th>
        <th width="33%">
            <img src="https://github.com/user-attachments/assets/2a1328d8-e31a-45ae-9d9d-62eafa06ef75"/>
        </th>
    </tr>
    <tr>
        <th colspan=3>Light</th>
    </tr>
    <tr>
        <th>Hard</th>
        <th>Medium</th>
        <th>Soft</th>
    </tr>
    <tr>
        <th width="33%">
            <img src="https://github.com/user-attachments/assets/276bda2c-f10c-4af9-8a32-ababbd54720d"/>
        </th>
        <th width="33%">
            <img src="https://github.com/user-attachments/assets/7ebaf912-270f-4e20-9c85-754486f932cf"/>
        </th>
        <th width="33%">
            <img src="https://github.com/user-attachments/assets/0cb92fbe-ca7b-4fc7-973a-6be9c0c79715"/>
        </th>
    </tr>
</table>

# Prerequisites

Neovim 0.9.0+

# Installing

## Using `lazy.nvim`

```lua
{ "pedrog14/gruvbox.nvim", lazy = false, priority = 1000, opts = {...} }
```

## Using `vim-plug`

```vim
Plug 'pedrog14/gruvbox.nvim'
```

## Using `packer`

```lua
use { "pedrog14/gruvbox.nvim" }
```

# Basic Usage

Inside your lua config:

```lua
vim.opt.background = "dark" -- or "light" for light mode
vim.cmd.colorscheme("gruvbox")
```

Inside `init.vim`:

```vim
set background=dark " or "light" for light mode
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
require("gruvbox").setup({
    color_override = {
        bg0 = "#000000"
    }
})
```

### Highlight groups

If you don't enjoy the current color for a specific highlight group, now you can just override it in the setup. For example:

```lua
require("gruvbox").setup({
    group_override = {
        SignColumn = { bg = "#ff9900" }
    }
})
```

It also works with treesitter groups and lsp semantic highlight tokens:

```lua
require("gruvbox").setup({
    group_override = {
        ["@lsp.type.method"] = { bg = "#ff9900" },
        ["@comment.lua"] = { bg = "#000000" },
    }
})
```

Please notice that the values on the overrides must follow the pattern that can be seen on [`synIDattr`](<https://neovim.io/doc/user/builtin.html#synIDattr()>).
