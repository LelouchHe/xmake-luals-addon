---@meta
---[conditions](https://xmake.io/#/manual/conditions)

---
---Is the current compilation target system
---
---[Open in browser](https://xmake.io/#/manual/conditions?id=is_os)
---
---@param os string|"windows"|"linux"|"android"|"macosx"|"ios" Test operation system
---@return boolean
function is_os(os) end

---
---Is the current compilation architecture
---
---[Open in browser](https://xmake.io/#/manual/conditions?id=is_arch)
---
---@param ... string Test architectures
---@return boolean
function is_arch(...) end

---
---Is the current compilation platform
---
---[Open in browser](https://xmake.io/#/manual/conditions?id=is_plat)
---
---@param ... string|"windows"|"linux"|"macosx"|"android"|"iphoneos"|"watchos" Test platform
---@return boolean
function is_plat(...) end

---
---Is the current compilation host system
---
---[Open in browser](https://xmake.io/#/manual/conditions?id=is_host)
---
---@param host string|"windows"|"linux"|"macosx" Test host system
---@return boolean
function is_host(host) end

---
---Determine the subsystem environment of the current host
---
---[Open in browser](https://xmake.io/#/manual/conditions?id=is_subhost)
---
---@param ... string|"msys"|"cygwin" Test subsystem environment
---@return boolean
function is_subhost(...) end

---
---Determine the architecture of the current host subsystem environment
---
---[Open in browser](https://xmake.io/#/manual/conditions?id=is_subarch)
---
---@param ... string Test architectures of current host subsystem environment
---@return boolean
function is_subarch(...) end

---
---Is the current compilation mode
---
---[Open in browser](https://xmake.io/#/manual/conditions?id=is_mode)
---
---@param mode string|"debug"|"release"|"profile" Test compilation mode
---@return boolean
function is_mode(mode) end

---
---Is the current target kind
---
---[Open in browser](https://xmake.io/#/manual/conditions?id=is_kind)
---
---@param kind string|"static"|"shared" Test target kind
---@return boolean
function is_kind(kind) end

---
---Is the given config values?
---
---[Open in browser](https://xmake.io/#/manual/conditions?id=is_config)
---
---@param ... string Test config values
---@return boolean
function is_config(...) end

---
---Is the given configs enabled?
---
---[Open in browser](https://xmake.io/#/manual/conditions?id=has_config)
---
---@param ... string Test config keys
---@return boolean
function has_config(...) end

---
---Is the given dependent package enabled?
---
---[Open in browser](https://xmake.io/#/manual/conditions?id=has_package)
---
---@param package string Test package name
---@return boolean
function has_package(package) end
