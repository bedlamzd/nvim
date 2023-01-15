local has_telescope, telescope = pcall(require, "telescope")

if not has_telescope then
    return
end

local action_state = require "telescope.actions.state"
local finders = require "telescope.finders"
local make_entry = require "telescope.make_entry"

local function reload_file_finder(prompt_bufnr)
    local opts = {}
    opts.entry_maker = make_entry.gen_from_file(opts)

    local cmd = { "fd", "--type", "f", "--hidden" }
    local current_picker = action_state.get_current_picker(prompt_bufnr)
    current_picker:refresh(finders.new_oneshot_job(cmd, opts), {})
end

telescope.setup(
    {
        pickers = {
            find_files = {
                mappings = {
                    n = {
                        ['h'] = reload_file_finder
                    },
                    i = {
                        ['H'] = reload_file_finder
                    }
                }
            }
        }
    }
)

local telescope_builtin = require("telescope.builtin")

vim.keymap.set('n', '<leader>t', '<CMD>Telescope<CR>', {})
vim.keymap.set('n', '<leader>sf', telescope_builtin.find_files, {})
vim.keymap.set('n', '<C-p>', function()
    local res, _ = pcall(telescope_builtin.git_files)
    if not res then
        vim.cmd([[ echo "Not in a git repository" ]])
    end
end, {})
vim.keymap.set('n', '<leader>ss', telescope_builtin.live_grep, {})
vim.keymap.set('n', '<leader>sb', telescope_builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>sh', telescope_builtin.help_tags, {})
vim.keymap.set('n', '<leader>b', telescope_builtin.buffers, {})
