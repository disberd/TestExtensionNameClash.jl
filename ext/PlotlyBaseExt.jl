module PlotlyBaseExt
    using PlotlyBase
    using PlotlyExtensionsHelper # Precompilation only crashes if this is used inside the extension. PlotlyExtensionsHelper internally has an extension with the same trigger (PlotlyBase) and same name (PlotlyBaseExt)
    using TestExtensionNameClash
end