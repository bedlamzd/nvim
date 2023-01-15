local has_one_monokai, one_monokai = pcall(require, "one_monokai")

if not has_one_monokai then
    return
end

one_monokai.setup({
    transparent = true,
})
