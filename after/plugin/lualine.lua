local has_lualine, lualine = pcall(require, "lualine")

if not has_lualine then
    return
end

lualine.setup {
    options = {
        theme = 'horizon',
    },
    extensions = {
        'nvim-tree', 'fugitive'
    }
}
