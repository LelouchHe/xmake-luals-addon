This is the Lua-LS addon for [Xmake](https://xmake.io/), a cross-platform build utility based on Lua.

It's used for xmake.lua, its major configuration file.

Users need to enable this addon from Lua Addon Manager, and select "Lua" as the language mode for this file, to enable the intellisense from Lua-LS.

## Run style check

Run `stylua library/` to fix lua styles

## How to add new addon

1. Fork [LLS-Addons](https://github.com/LuaLS/LLS-Addons.git)
2. Create addon folder in addons/$name
3. Add info.json
4. Run `git submodule add -b $branch $repo.git addones/$name/module`

## How to update existing addon

1. Fork [LLS-Addons](https://github.com/LuaLS/LLS-Addons.git)
2. Run `git submodule update --remote addones/$name/module`