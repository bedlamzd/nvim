local has_iron, iron_core = pcall(require, "iron.core")

if not has_iron then
    return
end

local iron_view = require("iron.view")


iron_core.setup {
    config = {
        scratch_repl = true,
        repl_open_cmd = iron_view.bottom(40),
    },

    keymaps = {
        send_motion = "<leader>sc",
        visual_send = "<leader>sc",
        send_file = "<leader>sf",
        send_line = "<leader>sl",
        send_mark = "<leader>sm",
        mark_motion = "<leader>mc",
        mark_visual = "<leader>mc",
        remove_mark = "<leader>md",
        cr = "<leader>s<cr>",
        interrupt = "<leader>s<leader>",
        exit = "<leader>sq",
        clear = "<leader>cl",
    },
}
