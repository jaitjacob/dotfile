return {
  "LazyVim/LazyVim",
  opts = function(_, opts)
    if not opts.format then opts.format = {} end
    if not opts.format.on_save then opts.format.on_save = {} end
    if not opts.format.on_save.ft then opts.format.on_save.ft = {} end
    table.insert(opts.format.on_save.ft, "python")
  end,
}
