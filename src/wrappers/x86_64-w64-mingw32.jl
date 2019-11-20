# Autogenerated wrapper script for OptimPack_jll for x86_64-w64-mingw32
export libcobyla, libbobyqa, libopk, libnewuoa

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"

# Relative path to `libcobyla`
const libcobyla_splitpath = ["bin", "libcobyla-1.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libcobyla_path = ""

# libcobyla-specific global declaration
# This will be filled out by __init__()
libcobyla_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libcobyla = "libcobyla-1.dll"


# Relative path to `libbobyqa`
const libbobyqa_splitpath = ["bin", "libbobyqa-1.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libbobyqa_path = ""

# libbobyqa-specific global declaration
# This will be filled out by __init__()
libbobyqa_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libbobyqa = "libbobyqa-1.dll"


# Relative path to `libopk`
const libopk_splitpath = ["bin", "libopk-2.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libopk_path = ""

# libopk-specific global declaration
# This will be filled out by __init__()
libopk_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libopk = "libopk-2.dll"


# Relative path to `libnewuoa`
const libnewuoa_splitpath = ["bin", "libnewuoa-1.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libnewuoa_path = ""

# libnewuoa-specific global declaration
# This will be filled out by __init__()
libnewuoa_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libnewuoa = "libnewuoa-1.dll"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libcobyla_path = abspath(joinpath(artifact"OptimPack", libcobyla_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libcobyla_handle = dlopen(libcobyla_path)
    push!(LIBPATH_list, dirname(libcobyla_path))

    global libbobyqa_path = abspath(joinpath(artifact"OptimPack", libbobyqa_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libbobyqa_handle = dlopen(libbobyqa_path)
    push!(LIBPATH_list, dirname(libbobyqa_path))

    global libopk_path = abspath(joinpath(artifact"OptimPack", libopk_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libopk_handle = dlopen(libopk_path)
    push!(LIBPATH_list, dirname(libopk_path))

    global libnewuoa_path = abspath(joinpath(artifact"OptimPack", libnewuoa_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libnewuoa_handle = dlopen(libnewuoa_path)
    push!(LIBPATH_list, dirname(libnewuoa_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(LIBPATH_list, ';')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

