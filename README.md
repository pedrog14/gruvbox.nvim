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
            <img width="800" height="600" alt="dark-hard" src="https://github.com/user-attachments/assets/a78fdebb-7d45-4b32-ba31-e7fee22e937b" />
        </th>
        <th width="33%">
            <img width="800" height="600" alt="dark-medium" src="https://github.com/user-attachments/assets/debcb3bd-1de0-4cce-9ed0-20b417af2d5b" />
        </th>
        <th width="33%">
            <img width="800" height="600" alt="dark-soft" src="https://github.com/user-attachments/assets/80cc891c-7203-4298-af56-86b10c77d108" />
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
            <img width="800" height="600" alt="light-hard" src="https://github.com/user-attachments/assets/b8187d58-ef44-46d5-bda6-f2eb000aa83b" />
        </th>
        <th width="33%">
            <img width="800" height="600" alt="light-medium" src="https://github.com/user-attachments/assets/ad292c2b-0fdf-4dea-8927-4db8e7dd949d" />
        </th>
        <th width="33%">
            <img width="800" height="600" alt="light-soft" src="https://github.com/user-attachments/assets/2c1026cd-01d4-4eb7-959e-a8752fac1a8c" />
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
