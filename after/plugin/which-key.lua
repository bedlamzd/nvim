local has_which_key, which_key = pcall(require, "which-key")

if not has_which_key then
    return
end

which_key.setup({})
