This is the Lua-LS addon for [Xmake](https://xmake.io/), a cross-platform build utility based on Lua.

It's used for xmake.lua, its major configuration file.

Users need to enable this addon from Lua Addon Manager, and select "Lua" as the language mode for this file, to enable the intellisense from Lua-LS.

## Run style check

Run `stylua library/` to fix lua styles

## How to add new addon

**vscode user**:

1. Fork [LLS-Addons](https://github.com/LuaLS/LLS-Addons.git)
2. Create addon folder in addons/$name
3. Add info.json
4. Run `git submodule add -b $branch $repo.git addones/$name/module`

**neovim user**:

1. create a new folder in whatever location you want

    `mkdir -p ~/.config/LLS-Addons`

2. clone this repo to the new folder

    `git clone --depth=1 https://github.com/LelouchHe/xmake-luals-addon.git ~/.config/LLS-Addons/`

3. add the new folder to LuaLS `workspace.userThirdParty` option

```lua
require'lspconfig'.lua_ls.setup {
    settings = {
        Lua = {
            workspace = {
                userThirdParty = {
                   vim.fn.expand("~/.config/LLS-Addons")
                }
            }
        }
    }
}
```

## How to update existing addon

1. Fork [LLS-Addons](https://github.com/LuaLS/LLS-Addons.git)
2. Run `git submodule update --remote addones/$name/module`
