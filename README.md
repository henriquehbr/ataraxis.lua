# ataraxis.lua

> absence of mental stress or anxiety, a state of serene calmness

![screenshot](./screenshot.png)

## Summary

- [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)
- [Contribution guidelines](#contribution-guidelines)
    - [Requirements](#requirements)
    - [Steps](#steps)

## Installation

> This plugin depends on [`henriquehbr/lua-helpers`](https://github.com/henriquehbr/lua-helpers) to work, remember to install it as well following the exact same instructions below

If you're using one of these plugin managers:

- [`paq-nvim`](https://github.com/savq/paq-nvim)
- [`packer.nvim`](https://github.com/wbthomason/packer.nvim)
- [`vim-plug`](https://github.com/junegunn/vim-plug)
- [`Vundle.vim`](https://github.com/VundleVim/Vundle.vim)
- [`dein.vim`](https://github.com/Shougo/dein.vim)
- [`minipac`](https://github.com/k-takata/minpac)

The installation method is pretty much the same for all of them, simply initialize the plugin manager and include `henriquehbr/ataraxis.lua` on the list

Otherwise, if you're using [`pathogen`](https://github.com/tpope/vim-pathogen), simply clone it on your `~/.vim/bundle` directory:

```
$ git clone --depth 1 https://github.com/henriquehbr/ataraxis.lua
```

> `ataraxis` is intended to be immediately executed on (n)vim startup, so if your plugin manager has some sort of `opt` funcionality that marks it as a optional plugin, avoid it!

## Usage

To get it up and running, first, `require` it on your config:

lua:

```lua
require 'ataraxis'.setup()
```

vimscript:

```vimscript
lua require 'ataraxis'.setup()
```

> It's strongly recommended to initialize `ataraxis` before any other plugin, in order to avoid windows created by other plugins to break the layout

## Configuration

The example below represents all the possible settings with their respective types and default values

```lua
require 'ataraxis'.setup {
    width = 80 -- sets the writing area width
}
```

## Contribution guidelines

### Requirements

The following tools are needed in order to properly setup the development workflow:

- `make`
- [`luarocks`](https://github.com/luarocks/luarocks)
- [`rustup`](https://github.com/rust-lang/rustup)
- [`nodejs`](https://github.com/nodejs/node)

### Steps

If you're willing to contribute to `ataraxis`, it's highly recommended to follow the steps below (for organization purposes)

1. Fork the repo
2. Open a new branch following one of the following naming patterns
    - `feat/<branch_name>` for features
    - `fix/<branch_name>` for bugfixes
    - `chore/<branch_name>` for small changes that doesn't fit the ones above
3. Run `make init` to setup the development environment
4. All commits must follow a similar naming pattern as the branches (which will be enforced by `commitlint`), examples below:
    - `feat: <commit_message>` for features
    - `fix: <commit_message>` for bugfixes
    - `chore: <commit_message>` for small changes that doesn't fit the ones above
5. Submit your PR! (preferably a small one and concise one, for a faster code review)

> Pull requests that stricly follow the recommendations above will have higher priority in contrast of those who don't
