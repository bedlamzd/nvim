local has_nvim_tree, nvim_tree = pcall(require, "nvim-tree")

if not has_nvim_tree then
    return
end


nvim_tree.setup({
    actions = {
        change_dir = {
            global = true,
        },
    },
    view = {
        adaptive_size = true,
    },
})

local api = require("nvim-tree.api")

vim.keymap.set('n', '\\', '<cmd>NvimTreeFocus<CR>')
vim.keymap.set('n', '|', '<cmd>NvimTreeFindFile!<CR>')
vim.keymap.set("n", "<leader>mn", api.marks.navigate.next)
vim.keymap.set("n", "<leader>mp", api.marks.navigate.prev)
vim.keymap.set("n", "<leader>ms", api.marks.navigate.select)

