---@meta

---
---Is the current compilation target system?
---
---xmake version >= 2.0.1
---
---[Open in Browser](https://xmake.io/#/manual/conditions?id=is_os)
---
---@param os string|"windows"|"linux"|"android"|"macosx"|"ios"
---@return boolean
function is_os(os) end

---
---Is the current compilation architecture?
---
---xmake version >= 2.0.1
---
---[Open in Browser](https://xmake.io/#/manual/conditions?id=is_os)
---
---@param os string|"windows"|"linux"|"android"|"macosx"|"ios"
---@return boolean
function is_arch(os) end
