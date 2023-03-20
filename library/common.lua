---@meta

---Supported operation system
---@alias OperationSystem string|"windows"|"linux"|"android"|"macosx"|"ios"

---Supported architecture
---@alias Architecture string

---Supported subarchitecture
---@alias Subarchitecture string

---Supported platform
---@alias Platform string|"windows"|"linux"|"macosx"|"android"|"iphoneos"|"watchos"

---Supported host
---@alias Host string|"windows"|"linux"|"macosx"

---Supported subhost
---@alias Subhost string|"msys"|"cygwin"

---Supported compilation mode
---@alias CompilationMode string|"debug"|"release"|"profile"

---Supported target kind
---@alias TargetKind string|"phony"|"binary"|"static"|"shared"|"object"|"headeronly"

---Supported runtime
---@alias Runtime string|"MT"|"MD"|"MTd"|"MDd"

---Supported strip mode
---@alias StripMode string|"debug"|"all"

---Supported symbol info
---@alias SymbolInfo string|"debug"|"debug,edit"|"debug,embed"|"hidden"

---Supported warning level
---@alias WarningLevel string|"none"|"less"|"more"|"all"|"allextra"|"everything"|"error"

---Supported optimization level
---@alias OptimizationLevel string|"none"|"fast"|"faster"|"fastest"|"smallest"|"aggressive"

---Supported language standard
---@alias LanguageStandard string|"ansi"|"c89"|"gnu89"|"c99"|"gnu99"|"c11"|"c17"|"clatest"|"cxx98"|"gnuxx98"|"cxx11"|"gnuxx11"|"cxx11"|"gnuxx11"|"cxx14"|"gnuxx14"|"cxx1z"|"gnuxx1z"|"cxx17"|"gnuxx17"|"cxx20"|"gnuxx20"|"cxxlatest"|"gnuxxlatest"

---Supported float-point model
---@alias FloatPointModel string|"fast"|"strict"|"fast"|"except"|"precise"

---Supported access specifier
---@class AccessSpecifier
---@field public public boolean 
---@field public private boolean
---@field public inteface boolean
---@field public inherit boolean

---Supported compilation option
---@class CompilationOption
---@field rule string
---@field force CompilationOption
---@field defines string
---@field languages LanguageStandard
---@field includedirs string
---@field cflags string

---Supported compilation flag attr
---@class CompilationFlagAttr
---@field force boolean
---@field tools string

---Supported tool type
---@alias ToolType string|"cc"|"cxx"|"mm"|"mxx"|"gc"|"as"|"sc"|"rc"|"dc"|"fc"|"sc"|"rust"|"strip"|"ld"|"sh"|"ar"|"dcld"|"dcsh"

---Supported toolchain
---Run `xmake show -l toolchains` for full list
---@alias Toolchain string

---Supported toolchain option
---@class ToolchainOption
---@field plat Platform
---@field arch Architecture
---@field vs string vs version

---Supported install files option
---@class InstallFilesOption
---@field prefixdir string
---@field install boolean

---Supported configvar option
---@class ConfigvarOption
---@field quote boolean Whether to keep the quotes
---@field escape boolean Whether to escape char

---Supported configfile option
---@class ConfigfilesOption
---@field filename string
---@field prefixdir string
---@field onlycopy boolean
---@field pattern string
---@field variables { [string]: any}

---Supported build policy
---Run `xmake l core.project.policy.policies` for full list
---@alias BuildPolicy string

---Supported filegroups option
---@class FilegroupsOption
---@field rootdir string
---@field files string[]
---@field mode string|"plain"|"tree"

---Supported exception type
---@alias ExceptionType string|"cxx"|"no-cxx"|"objc"|"no-objc"

---@class SourceBatch
---@field sourcekind string Type of this batch of source files
---@field rulename string Build rule name
---@field sourcefiles string[] Get the list of source files
---@field objecetfiles string[] Get the list of object files
---@field dependfiles string[] Get the list of dependent files

---@class PackageConfigs
---@field shared boolean Whether to enable dynamic library
---@field pic boolean Whether to enable pic
---@field vs_runtime Runtime MSVC runtime
---@field [string] any Other package configs

---@class RequiresOption
---@field optional boolean Whether the package is optional
---@field system boolean Whether to disable same system package
---@field verify boolean Whether to verify this package
---@field debug boolean Whether to enable debug mode
---@field alias string Another name for this package
---@field configs PackageConfigs Package configs

---@class RequireconfsOption
---@field override boolean Whether to override existing configs
---@field version string Package version
---@field configs PackageConfigs Package configs

---@class RepositoriesOption
---@field rootdir string Set root directory of repo

---TODO: add more
---@class TargetAttr
---@field kind TargetKind Set target kind
---@field files string[] Set target files
---@field includedirs string Set target include directories
