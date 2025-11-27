# gruvbox.nvim

A complete overhaul of the [gruvbox original theme](https://github.com/morhetz/gruvbox), based on ellisonleao's [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim) and folke's [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) themes.

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
            <img src="https://github.com/user-attachments/assets/d9e6d8a3-eec9-4e12-82d1-961ede6fc237"/>
        </th>
        <th width="33%">
            <img src="https://github.com/user-attachments/assets/4f68383d-9bd8-4198-89ca-a7a78bc4cca6"/>
        </th>
        <th width="33%">
            <img src="https://github.com/user-attachments/assets/3e2ad5ac-66d0-4cfa-a026-696e6ac7325d"/>
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
            <img src="https://github.com/user-attachments/assets/d67802c2-326b-4b23-9aa0-72cd07cae5f7"/>
        </th>
        <th width="33%">
            <img src="https://github.com/user-attachments/assets/cc152b1f-fea0-4d9a-bd72-ff20671df1ae"/>
        </th>
        <th width="33%">
            <img src="https://github.com/user-attachments/assets/e9d9e7f9-d99c-4217-aae8-c6a5f9512051"/>
        </th>
    </tr>
</table>

# Requirements

- Neovim >= 0.9.0
- Git (Any recent version may work)

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
set background=dark " or 'light' for light mode
colorscheme gruvbox
```

# Configuration

The default settings for gruvbox are:

```lua
{
    cache = true,
    contrast = nil, ---@type Contrast
    dim_inactive = false,
    terminal_colors = true,
    transparent = false,

    ---@type fun(colors: GruvboxColors)
    color_override = nil,

    ---@type fun(hl: GruvboxHighlightsResolved, colors: GruvboxColors)
    group_override = nil,

    plugins = {
        all = package.loaded.lazy == nil,
        auto = true,
    },

    style = { ---@type table<string, vim.api.keyset.highlight>
        comments = { italic = true },
        indent = {},
        operators = {},
        selection = {},
        signs = {},
        strings = {},
    },
}

```

You can modify your settings by calling the `require("gruvbox").setup` lua function before setting your colorscheme to gruvbox, with the proper argument table.

## Overriding

### Colors

You can modify and specify your own colors. For example:

```lua
require("gruvbox").setup({
    color_override = function(colors)
        colors.bg0 = colors.gray
        colors.fg1 = "#ffffff"
    end
})
```

### Highlight groups

If you don't enjoy the current color for a specific highlight group, now you can just override it in the setup. For example:

```lua
require("gruvbox").setup({
    group_override = function(hl, colors)
        hl.Normal = { bg = "#000000" }
        hl.SignColumn = { fg = colors.orange }
    end
})
```

Please notice that the highlight table must be defined as seen on [`:h nvim_set_hl()`](https://neovim.io/doc/user/api.html#nvim_set_hl()), in the `{val}` parameter section.
