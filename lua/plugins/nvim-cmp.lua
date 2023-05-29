return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-nvim-lsp",
    },
    opts = function()
        local cmp = require("cmp")
        return {
            sources = cmp.config.sources({
                { name = "nvim_lsp", priority = 1000 },
                --   { name = "luasnip",  priority = 750 },
                { name = "buffer",   priority = 500 },
                { name = "path",     priority = 250 },
            })
        }
    end,
}
