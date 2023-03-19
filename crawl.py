import sys
import requests

if len(sys.argv) != 2:
    print("required param is missing: name")
    quit()

name = sys.argv[1]

xmake_format = "https://raw.githubusercontent.com/xmake-io/xmake-docs/master/manual/{0}.md"
xmake_id_prefix = "### "
xmake_description_prefix = "#### "
xmake_link_format = "https://xmake.io/#/manual/{0}"

lua_format = "library/{0}.lua"

lua_template = '''
---
---{description}
---
---[Open in browser](https://xmake.io/#/manual/{name}?id={id})
---
---@param
---@return
function {id}() end
'''

req = requests.get(xmake_format.format(name))
req.raise_for_status()

lines = req.text.splitlines()

id = ""
description = ""
with open(lua_format.format(name), "w", encoding = "utf-8") as f:
    f.write("---@meta\n")
    f.write("---[{0}](".format(name))
    f.write(xmake_link_format.format(name))
    f.write(")\n")
    for line in lines:
        line = line.strip()
        if line.startswith(xmake_id_prefix):
            id = line[len(xmake_id_prefix):]
        elif line.startswith(xmake_description_prefix):
            description = line[len(xmake_description_prefix):]
            f.write(lua_template.format(name = name, id = id, description = description))
