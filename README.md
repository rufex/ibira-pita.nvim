# Ibirá-Pitá

Yet another colorscheme for Neovim, with a dark background and yellow as the predominant color.

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

## Other applications

### Batcat

The purple variant of this colorscheme is also available as a theme for [bat](https://github.com/sharkdp/bat), a modern alternative to `cat` with syntax highlighting.

#### Installation

1. Copy the theme file to bat's themes directory:

```bash
mkdir -p "$(bat --config-dir)/themes"
cp themes/bat/ibira-pita-purple.tmTheme "$(bat --config-dir)/themes/"
```

2. Rebuild bat's cache:

```bash
batcat cache --build
```

3. Verify the theme is available:

```bash
bat --list-themes | grep ibira
```

### Usage

Use the theme for a single file:

```bash
bat --theme="ibira-pita-purple" myfile.py
```

Set it as the default theme by adding the following to `$(bat --config-dir)/config`:

```
--theme="ibira-pita-purple"
```

### Eza

The purple variant is also available as a theme for [eza](https://github.com/eza-community/eza), a modern replacement for `ls`.

#### Installation

Copy the theme file to eza's configuration directory:

```bash
mkdir -p ~/.config/eza
cp themes/eza/ibira-pita-purple.yml ~/.config/eza/theme.yml
```

#### Usage

The theme will be applied automatically when running eza:

```bash
eza --long --all --color=always
```

**Note**: If you have `LS_COLORS` or `EZA_COLORS` environment variables set, they will override the theme file. Unset them to use the theme properly.

## Screenshots

![Screenshot-1](./assets/ibira-1.png)

## Acknowledgements

- [Vim colors](https://vimcolors.org/)
- [Termcolors](https://github.com/psliwka/termcolors.nvim)
- [Awesome Vim Colorschemes](https://github.com/rafi/awesome-vim-colorschemes)
- [Kanagawa](https://github.com/rebelot/kanagawa.nvim)

## [Peltophorum dubium](https://en.wikipedia.org/wiki/Peltophorum_dubium)

![Peltophorum dubium](https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Ibira_pita.JPG/640px-Ibira_pita.JPG)
