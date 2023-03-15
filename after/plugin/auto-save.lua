local has_auto_save, auto_save = pcall(require, "auto-save")

if not has_auto_save then
    return
end

auto_save.setup()

