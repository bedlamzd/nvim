local has_neo_tree, _ = pcall(require, "neo-tree")

if not has_neo_tree then
    return
end


vim.keymap.set('n', '\\', '<cmd>Neotree<CR>')
vim.keymap.set('n', '|', '<cmd>Neotree reveal_force_cwd<CR>')
vim.keymap.set('n', '<leader>gs', '<cmd>Neotree float git_status<CR>')
vim.keymap.set('n', '<leader>b', '<cmd>Neotree show buffers right<CR>')

