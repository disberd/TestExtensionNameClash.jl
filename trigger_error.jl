import Pkg
proj_env = Base.current_project(@__DIR__)
temp_env = joinpath(tempdir(), "ExtensionClash_PlotlyBase", "Project.toml")
Pkg.activate(temp_env)
Pkg.add("PlotlyBase")
push!(LOAD_PATH, temp_env)
Pkg.activate(proj_env)
using TestExtensionNameClash
using PlotlyBase