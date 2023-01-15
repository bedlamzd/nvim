local has_lsp, lsp = pcall(require, "lsp-zero")

if not has_lsp then
    return
end

lsp.preset('recommended')

lsp.nvim_workspace()

lsp.setup()
