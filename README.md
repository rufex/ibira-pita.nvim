
# Ibirá-Pitá

Yet another colorscheme for Neovim.

## Installation

Using a plugin manager, such as `lazy.nvim`, add the following line to your
`init.lua` file:

```lua
  {
    'rufex/ibira-pita.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'ibira-pita'
    end,
  },
```

## TODO

- [ ] Generate terminal colors with [termcolors.nvim](https://github.com/psliwka/termcolors.nvim)
