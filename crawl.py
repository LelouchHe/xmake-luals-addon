import sys
import os
import requests

if len(sys.argv) < 2:
    print("required param is missing: name")
    quit()

name = sys.argv[1]
instance = False
if len(sys.argv) > 2:
    instance = sys.argv[2].lower() == "true"

xmake_id_prefix = "### "
xmake_description_prefix = "#### "
if instance:
    xmake_id_prefix = "#### "
    xmake_description_prefix = "- "

file_name_format = "library/{0}.lua"
file_name = file_name_format.format(name)
if os.path.isfile(file_name):
    r = input("Overwrite the existing one? [y|n]\n")
    if r == "" or r == "n":
        print("no operation")
        quit()

xmake_source_format = "https://raw.githubusercontent.com/xmake-io/xmake-docs/master/manual/{0}.md"
xmake_link_format = "https://xmake.io/#/manual/{0}"

lua_template = '''
---
---{description}
---
---[Open in browser](https://xmake.io/#/manual/{name}?id={id})
---
---@param
---@return
function {function_name}() end
'''

lua_scoped_template = '''
---
---**Scoped: {scope}**
---
---{description}
---
---[Open in browser](https://xmake.io/#/manual/{name}?id={id})
---
---@param
---@return
function {function_name}() end
'''

req = requests.get(xmake_source_format.format(name))
req.raise_for_status()

lines = req.text.splitlines()

id = ""
description = ""

with open(file_name, "w", encoding = "utf-8") as f:
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
            ids = id.split(":")
            if len(ids) == 1 or instance:
                if instance:
                    function_name = id.capitalize()
                else:
                    function_name = id
                f.write(lua_template.format(name = name, id = id.replace(":", ""), description = description, function_name = function_name))
            elif len(ids) == 2 and not instance:
                f.write(lua_scoped_template.format(name = name, id = id.replace(":", ""), description = description, function_name = ids[1], scope = ids[0]))
