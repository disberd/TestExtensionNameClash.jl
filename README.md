This repository is just an example to show a corner case where two julia extensions with the same name (but different parent packages) gives an error during precompilation.

You can easily see the error by running the following on the command line
```
git clone https://github.com/disberd/TestExtensionNameClash.jl
julia -L TestExtensionNameClash.jl/trigger_error.jl 
```

This simple package has one single dependency, which is the unregistered package [PlotlyExtensionsHelper.jl](https://github.com/disberd/PlotlyExtensionsHelper.jl). This dependency has an extension called `PlotlyBaseExt` which is triggered when `PlotlyBase.jl` is loaded.
