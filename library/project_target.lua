---@meta
---[project_target](https://xmake.io/#/manual/project_target)

---
---Define a project target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=target)
---
---@param target string Target name
---@return nil
function target(target) end

---
---Define a project target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=target)
---
---@param target string Target name
---@param func fun(): nil Target scoped function
---@return nil
function target(target, func) end

---@class Target_Extra
---@field kind string Set target kind
---@field files string Set target files

---
---Define a project target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=target)
---
---@param target string Target name
---@param extra Target_Extra
---@return nil
function target(target, extra) end

---
---End target definition
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=target_end)
---
---@return nil
function target_end() end

---
---**Scoped: target**
---
---Set target kind
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_kind)
---
---@param kind string|"phony"|"binary"|"static"|"shared"|"object"|"headeronly" Target kind
---@return nil
function set_kind(kind) end

---
---**Scoped: target**
---
---Strip target symbols
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_strip)
---
---@param mode string|"debug"|"all" Symbols to strip
---@return nil
function set_strip(mode) end

---
---**Scoped: target**
---
---Enable or disable target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_enabled)
---
---@param enabled boolean
---@return nil
function set_enabled(enabled) end

---
---**Scoped: target**
---
---Mark as default target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_default)
---
---@param is_default boolean
---@return nil
function set_default(is_default) end

---
---**Scoped: target**
---
---Set configuration options
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_options)
---
---@param name string Option name
---@param ... string Option names
---@return nil
function set_options(name, ...) end

---@alias SymbolInfo string|"debug"|"debug,edit"|"debug,embed"|"hidden"

---
---**Scoped: target**
---
---Set symbol info
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_symbols)
---
---@param info SymbolInfo Symbol info
---@param ... SymbolInfo Symbol infos
---@return nil
function set_symbols(info, ...) end

---
---**Scoped: target**
---
---Set the base name of target file
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_basename)
---
---@param name string Base name
---@return nil
function set_basename(name) end

---
---**Scoped: target**
---
---Set the full name of target file
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_filename)
---
---@param name string Full name
---@return nil
function set_filename(name) end

---
---**Scoped: target**
---
---Set the leading name of the target file
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_prefixname)
---
---@param name string Prefix name
---@return nil
function set_prefixname(name) end

---
---**Scoped: target**
---
---Set the postname of the target file
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_suffixname)
---
---@param name string Suffix name
---@return nil
function set_suffixname(name) end

---
---**Scoped: target**
---
---Set the extension of the target file
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_extension)
---
---@param ext string Extension
---@return nil
function set_extension(ext) end

---@alias WarningLevel string|"none"|"less"|"more"|"all"|"allextra"|"everything"|"error"

---
---**Scoped: target**
---
---Set compilation warning level
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_warnings)
---
---@param level WarningLevel Warning level
---@param ... WarningLevel Warning levels
---@return nil
function set_warnings(level, ...) end

---
---**Scoped: target**
---
---Set competition optimization level
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_optimize)
---
---@param level string|"none"|"fast"|"faster"|"fastest"|"smallest"|"aggressive" Compilation optimization level
---@return nil
function set_optimize(level) end

---@alias LanguageStandard string|"ansi"|"c89"|"gnu89"|"c99"|"gnu99"|"c11"|"c17"|"clatest"|"cxx98"|"gnuxx98"|"cxx11"|"gnuxx11"|"cxx11"|"gnuxx11"|"cxx14"|"gnuxx14"|"cxx1z"|"gnuxx1z"|"cxx17"|"gnuxx17"|"cxx20"|"gnuxx20"|"cxxlatest"|"gnuxxlatest"

---
---**Scoped: target**
---
---Set source code language standards
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_languages)
---
---@param language LanguageStandard Language standard
---@param ... LanguageStandard Language standards
---@return nil
function set_languages(language, ...) end

---@alias FPModel string|"fast"|"strict"|"fast"|"except"|"precise"

---
---**Scoped: target**
---
---Set float-point compilation mode
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_fpmodels)
---
---@param model FPModel Float-point model
---@param ... FPModel Float-point models
---@return nil
function set_fpmodels(model, ...) end

---
---**Scoped: target**
---
---Set output directories for target files
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_targetdir)
---
---@param dir string Target file output directory
---@return nil
function set_targetdir(dir) end

---
---**Scoped: target**
---
---Set output directories for object files
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_objectdir)
---
---@param dir string Object file output directory
---@return nil
function set_objectdir(dir) end

---
---**Scoped: target**
---
---Set output directories for dependent files
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_dependir)
---
---@param dir string Dependent file output directory
---@return nil
function set_dependir(dir) end

---
---**Scoped: target**
---
---Add imports modules for the custom script
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_imports)
---
---@param name string Module name
---@param ... string Module names
---@return nil
function add_imports(name, ...) end

---
---**Scoped: target**
---
---Add custom compilation rule to target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_rules)
---
---@param name string Rule name
---@param ... string Rule names
---@return nil
function add_rules(name, ...) end

---
---**Scoped: target**
---
---Run custom load target configuration script
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targeton_load)
---
---@param func fun(target: Target): nil Function to run when target is loaded
---@return nil
function on_load(func) end

---
---**Scoped: target**
---
---custom configuration script
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targeton_config)
---
---@param func fun(target: Target): nil Function to run before build 
---@return nil
function on_config(func) end

---
---**Scoped: target**
---
---Run custom link target script
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targeton_link)
---
---@param func fun(target: Target): nil Function to run when link
---@return nil
function on_link(func) end

---
---**Scoped: target**
---
---Run custom build target script
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targeton_build)
---
---@param func fun(target: Target): nil Function to run for custom build
---@return nil
function on_build(func) end

---
---**Scoped: target**
---
---Run custom build target script
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targeton_build)
---
---@param platform string Target platform and architecture
---@param func fun(target: Target): nil Function to run for custom build
---@return nil
function on_build(platform, func) end

---
---**Scoped: target**
---
---Run custom build single file script
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targeton_build_file)
---
---@param func fun(target: Target, file: string, options: any): nil
---@return nil
function on_build_file(func) end

---
---**Scoped: target**
---
---Run custom build files script
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targeton_build_files)
---
---@param
---@return
function on_build_files() end

---
---**Scoped: target**
---
---Run custom clean files script
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targeton_clean)
---
---@param
---@return
function on_clean() end

---
---**Scoped: target**
---
---Run custom package target script
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targeton_package)
---
---@param
---@return
function on_package() end

---
---**Scoped: target**
---
---Run custom install target file script
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targeton_install)
---
---@param
---@return
function on_install() end

---
---**Scoped: target**
---
---Run custom uninstall target file script
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targeton_uninstall)
---
---@param
---@return
function on_uninstall() end

---
---**Scoped: target**
---
---Run custom run target script
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targeton_run)
---
---@param
---@return
function on_run() end

---
---**Scoped: target**
---
---Run custom script before linking target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetbefore_link)
---
---@param
---@return
function before_link() end

---
---**Scoped: target**
---
---Run custom script before building target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetbefore_build)
---
---@param
---@return
function before_build() end

---
---**Scoped: target**
---
---Run custom script before building single file
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetbefore_build_file)
---
---@param
---@return
function before_build_file() end

---
---**Scoped: target**
---
---Run custom script before building files
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetbefore_build_files)
---
---@param
---@return
function before_build_files() end

---
---**Scoped: target**
---
---Run custom script before cleaning target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetbefore_clean)
---
---@param
---@return
function before_clean() end

---
---**Scoped: target**
---
---Run custom script before packaging target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetbefore_package)
---
---@param
---@return
function before_package() end

---
---**Scoped: target**
---
---Run custom script before installing target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetbefore_install)
---
---@param
---@return
function before_install() end

---
---**Scoped: target**
---
---Run custom script before uninstalling target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetbefore_uninstall)
---
---@param
---@return
function before_uninstall() end

---
---**Scoped: target**
---
---Run custom script before running target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetbefore_run)
---
---@param
---@return
function before_run() end

---
---**Scoped: target**
---
---Run custom script after linking target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetafter_link)
---
---@param
---@return
function after_link() end

---
---**Scoped: target**
---
---Run custom script after building target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetafter_build)
---
---@param
---@return
function after_build() end

---
---**Scoped: target**
---
---Run custom script after building single file
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetafter_build_file)
---
---@param
---@return
function after_build_file() end

---
---**Scoped: target**
---
---Run custom script after building files
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetafter_build_files)
---
---@param
---@return
function after_build_files() end

---
---**Scoped: target**
---
---Run custom script after cleaning target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetafter_clean)
---
---@param
---@return
function after_clean() end

---
---**Scoped: target**
---
---Run custom script after packaging target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetafter_package)
---
---@param
---@return
function after_package() end

---
---**Scoped: target**
---
---Run custom script after installing target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetafter_install)
---
---@param
---@return
function after_install() end

---
---**Scoped: target**
---
---Run custom script after uninstalling target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetafter_uninstall)
---
---@param
---@return
function after_uninstall() end

---
---**Scoped: target**
---
---Run custom script after running target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetafter_run)
---
---@param
---@return
function after_run() end

---
---**Scoped: target**
---
---Set pre-compiled c header file
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_pcheader)
---
---@param
---@return
function set_pcheader() end

---
---**Scoped: target**
---
---Set pre-compiled c++ header file
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_pcxxheader)
---
---@param
---@return
function set_pcxxheader() end

---
---**Scoped: target**
---
---Add target dependencies
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_deps)
---
---@param
---@return
function add_deps() end

---
---**Scoped: target**
---
---Add link libraries
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_links)
---
---@param
---@return
function add_links() end

---
---**Scoped: target**
---
---Add system link libraries
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_syslinks)
---
---@param
---@return
function add_syslinks() end

---
---**Scoped: target**
---
---Add source files
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_files)
---
---@param
---@return
function add_files() end

---
---**Scoped: target**
---
---Remove source files
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetremove_files)
---
---@param
---@return
function remove_files() end

---
---**Scoped: target**
---
---Remove the specified file from the preceding list of header files
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetremove_headerfiles)
---
---@param
---@return
function remove_headerfiles() end

---
---**Scoped: target**
---
---Add link search directories
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_linkdirs)
---
---@param
---@return
function add_linkdirs() end

---
---**Scoped: target**
---
---Add load search directories for dynamic libraries
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_rpathdirs)
---
---@param
---@return
function add_rpathdirs() end

---
---**Scoped: target**
---
---Add include search directories
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_includedirs)
---
---@param
---@return
function add_includedirs() end

---
---**Scoped: target**
---
---Add system header file search directory
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_sysincludedirs)
---
---@param
---@return
function add_sysincludedirs() end

---
---**Scoped: target**
---
---Add macro definition
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_defines)
---
---@param
---@return
function add_defines() end

---
---**Scoped: target**
---
---Add macro undefinition
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_undefines)
---
---@param
---@return
function add_undefines() end

---
---**Scoped: target**
---
---Add c compilation flags
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_cflags)
---
---@param
---@return
function add_cflags() end

---
---**Scoped: target**
---
---Add c/c++ compilation flags
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_cxflags)
---
---@param
---@return
function add_cxflags() end

---
---**Scoped: target**
---
---Add c++ compilation flags
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_cxxflags)
---
---@param
---@return
function add_cxxflags() end

---
---**Scoped: target**
---
---Add objc compilation flags
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_mflags)
---
---@param
---@return
function add_mflags() end

---
---**Scoped: target**
---
---Add objc/objc++ compilation flags
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_mxflags)
---
---@param
---@return
function add_mxflags() end

---
---**Scoped: target**
---
---Add objc++ compilation flags
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_mxxflags)
---
---@param
---@return
function add_mxxflags() end

---
---**Scoped: target**
---
---Add swift compilation flags
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_scflags)
---
---@param
---@return
function add_scflags() end

---
---**Scoped: target**
---
---Add asm compilation flags
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_asflags)
---
---@param
---@return
function add_asflags() end

---
---**Scoped: target**
---
---Add go compilation flags
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_gcflags)
---
---@param
---@return
function add_gcflags() end

---
---**Scoped: target**
---
---Add dlang compilation flags
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_dcflags)
---
---@param
---@return
function add_dcflags() end

---
---**Scoped: target**
---
---Add rust compilation flags
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_rcflags)
---
---@param
---@return
function add_rcflags() end

---
---**Scoped: target**
---
---Add fortran compilation flags
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_fcflags)
---
---@param
---@return
function add_fcflags() end

---
---**Scoped: target**
---
---Add zig compilation flags
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_zcflags)
---
---@param
---@return
function add_zcflags() end

---
---**Scoped: target**
---
---Add cuda compilation flags
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_cuflags)
---
---@param
---@return
function add_cuflags() end

---
---**Scoped: target**
---
---Add cuda device link flags
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_culdflags)
---
---@param
---@return
function add_culdflags() end

---
---**Scoped: target**
---
---Add gencode settings for cuda devices
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_cugencodes)
---
---@param
---@return
function add_cugencodes() end

---
---**Scoped: target**
---
---Add static library link flags
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_ldflags)
---
---@param
---@return
function add_ldflags() end

---
---**Scoped: target**
---
---Add archive library flags
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_arflags)
---
---@param
---@return
function add_arflags() end

---
---**Scoped: target**
---
---Add dynamic library link flags
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_shflags)
---
---@param
---@return
function add_shflags() end

---
---**Scoped: target**
---
---Add option dependencies
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_options)
---
---@param
---@return
function add_options() end

---
---**Scoped: target**
---
---Add package dependencies
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_packages)
---
---@param
---@return
function add_packages() end

---
---**Scoped: target**
---
---Add language standards
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_languages)
---
---@param
---@return
function add_languages() end

---
---**Scoped: target**
---
---Add vector extensions
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_vectorexts)
---
---@param
---@return
function add_vectorexts() end

---
---**Scoped: target**
---
---Add frameworks
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_frameworks)
---
---@param
---@return
function add_frameworks() end

---
---**Scoped: target**
---
---Add framework search directories
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_frameworkdirs)
---
---@param
---@return
function add_frameworkdirs() end

---
---**Scoped: target**
---
---Set toolset
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_toolset)
---
---@param
---@return
function set_toolset() end

---
---**Scoped: target**
---
---Set up the toolchain
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_toolchains)
---
---@param
---@return
function set_toolchains() end

---
---**Scoped: target**
---
---Set the compilation platform for the specified target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_plat)
---
---@param
---@return
function set_plat() end

---
---**Scoped: target**
---
---Set the compilation architecture of the specified target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_arch)
---
---@param
---@return
function set_arch() end

---
---**Scoped: target**
---
---Set custom configuration values
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_values)
---
---@param
---@return
function set_values() end

---
---**Scoped: target**
---
---Add custom configuration values
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_values)
---
---@param
---@return
function add_values() end

---
---**Scoped: target**
---
---Set the running directory
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_rundir)
---
---@param
---@return
function set_rundir() end

---
---**Scoped: target**
---
---Set the list of run parameters
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_runargs)
---
---@param
---@return
function set_runargs() end

---
---**Scoped: target**
---
---Add runtime environment variables
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_runenvs)
---
---@param
---@return
function add_runenvs() end

---
---**Scoped: target**
---
---Set the runtime environment variable
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_runenv)
---
---@param
---@return
function set_runenv() end

---
---**Scoped: target**
---
---Set the installation directory
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_installdir)
---
---@param
---@return
function set_installdir() end

---
---**Scoped: target**
---
---Add installation files
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_installfiles)
---
---@param
---@return
function add_installfiles() end

---
---**Scoped: target**
---
---Add header files
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_headerfiles)
---
---@param
---@return
function add_headerfiles() end

---
---**Scoped: target**
---
---Set the output directory of configuration files
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_configdir)
---
---@param
---@return
function set_configdir() end

---
---**Scoped: target**
---
---Set template configuration variables
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_configvar)
---
---@param
---@return
function set_configvar() end

---
---**Scoped: target**
---
---Add template configuration files
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_configfiles)
---
---@param
---@return
function add_configfiles() end

---
---**Scoped: target**
---
---Set build policy
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_policy)
---
---@param
---@return
function set_policy() end

---
---**Scoped: target**
---
---Set the runtime library of the compilation target
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_runtimes)
---
---@param
---@return
function set_runtimes() end

---
---**Scoped: target**
---
---Set target group
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_group)
---
---@param
---@return
function set_group() end

---
---**Scoped: target**
---
---Add Source file groups
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetadd_filegroups)
---
---@param
---@return
function add_filegroups() end

---
---**Scoped: target**
---
---Enabling or disabling exceptions
---
---[Open in browser](https://xmake.io/#/manual/project_target?id=targetset_exceptions)
---
---@param
---@return
function set_exceptions() end
