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

---@class PackageConfigs
---@field shared boolean Whether to enable dynamic library
---@field pic boolean Whether to enable pic
---@field vs_runtime "MT"|"MD"|"MTd"|"MDd" MSVC runtime
---@field [string] any Other package configs

---@class AddRequires_Extra
---@field optional boolean Whether the package is optional
---@field system boolean Whether to disable same system package
---@field verify boolean Whether to verify this package
---@field debug boolean Whether to enable debug mode
---@field alias string Another name for this package
---@field configs PackageConfigs Package configs

---
---Add the required dependency packages
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=add_requires)
---
---@param name string Required dependency package name
---@param extra? AddRequires_Extra
---@return nil
function add_requires(name, extra) end

---@class AddRequireconfs_Extra
---@field override boolean Whether to override existing configs
---@field version string Package version
---@field configs PackageConfigs Package configs

---
---Set the configuration of the specified dependent package
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=add_requireconfs)
---
---@param name string Package name
---@param extra AddRequireconfs_Extra
---@return nil
function add_requireconfs(name, extra) end

---
---Add 3rd package repositories
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=add_repositories)
---
---@param ... string Repo name and repo location
---@return nil
function add_repositories(...) end

---
---Add 3rd package repositories
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=add_repositories)
---
---@param repo string Repo name and repo location, separated by " "
---@param extra? { rootdir: string } Set root directory of repo
---@return nil
function add_repositories(repo, extra) end

---
---Set the default compilation platform
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=set_defaultplat)
---
---@param platform string|"windows"|"linux"|"macosx"|"android"|"iphoneos"|"watchos" Default platform
---@return nil
function set_defaultplat(platform) end

---
---Set the default compilation architecture
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=set_defaultarchs)
---
---@param ... string Default arthitecture
---@return nil
function set_defaultarchs(...) end

---
---Set the default compilation mode
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=set_defaultmode)
---
---@param mode string
---@return nil
function set_defaultmode(mode) end

---
---Set the list of platforms allowed to compile
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=set_allowedplats)
---
---@param ... string Allowed platforms
---@return nil
function set_allowedplats(...) end

---
---Set the platform architecture that allows compilation
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=set_allowedarchs)
---
---@param ... string Allowed architectures
---@return nil
function set_allowedarchs(...) end

---
---Set the list of allowed compilation modes
---
---[Open in browser](https://xmake.io/#/manual/global_interfaces?id=set_allowedmodes)
---
---@param ... string Allowed modes
---@return nil
function set_allowedmodes(...) end
