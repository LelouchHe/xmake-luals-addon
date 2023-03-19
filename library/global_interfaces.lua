---@meta
---[global_interfaces](https://xmake.io/#/manual/global_interfaces)

---
---Add sub-project files and directories
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=includes)
---
---@param ... string Sub-project directories or files
---@return nil
function includes(...) end

---
---Set project name
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=set_project)
---
---@param name string Project name
---@return nil
function set_project(name) end

---
---Set project version
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=set_version)
---
---@param version string Project version
---@param extra? { build: string } Build version in datetime format, like "%Y%m%d%H%M"
---@return nil
function set_version(version, extra) end

---
---Set minimal xmake version
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=set_xmakever)
---
---@param version string Minimal xmake version
---@return nil
function set_xmakever(version) end

---
---Add module directories
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=add_moduledirs)
---
---@param ... string Module directories
---@return nil
function add_moduledirs(...) end

---
---Add plugin directories
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=add_plugindirs)
---
---@param ... string Plugin directories
---@return nil
function add_plugindirs(...) end

---
---Get the configuration value
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=get_config)
---
---@param key string Config key
---@return string value
function get_config(key) end

---
---Set the default configuration value
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=set_config)
---
---@param key string Config key
---@param value string Config value
---@return nil
function set_config(key, value) end

---
---Add the required dependency packages
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=add_requires)
---
---@param ... string Required dependency package names
---@return nil
function add_requires(...) end

---
---Add the required dependency packages
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=add_requires)
---
---@param name string Required dependency package name
---@param extra? { optional: boolean } Whether these are optional
---@return nil
function add_requires(name, extra) end

---
---Set the configuration of the specified dependent package
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=add_requireconfs)
---
---@param
---@return
function add_requireconfs() end

---
---Add 3rd package repositories
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=add_repositories)
---
---@param
---@return
function add_repositories() end

---
---Set the default compilation platform
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=set_defaultplat)
---
---@param
---@return
function set_defaultplat() end

---
---Set the default compilation architecture
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=set_defaultarchs)
---
---@param
---@return
function set_defaultarchs() end

---
---Set the default compilation mode
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=set_defaultmode)
---
---@param
---@return
function set_defaultmode() end

---
---Set the list of platforms allowed to compile
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=set_allowedplats)
---
---@param
---@return
function set_allowedplats() end

---
---Set the platform architecture that allows compilation
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=set_allowedarchs)
---
---@param
---@return
function set_allowedarchs() end

---
---Set the list of allowed compilation modes
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=set_allowedmodes)
---
---@param
---@return
function set_allowedmodes() end
