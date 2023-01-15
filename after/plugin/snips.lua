local has_luasnip, ls = pcall(require, "luasnip")

if not has_luasnip then
    return
end

ls.config.set_config {
    updateevents = 'TextChanged,TextChangedI',
}


local NVIM_CONFIG_DIR = vim.fs.dirname( os.getenv('MYVIMRC') )


require("luasnip.loaders.from_lua").load({paths = NVIM_CONFIG_DIR .. "/snippets"})

