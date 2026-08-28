local lsps = {
    {"clangd"},
    {"docker_language_server"},
    {"cssls"},
    {"rust_analyzer"},
    {"tsc"},
    {"tailwindcss"},
    {"wc_language_server"},
    {"oxlint"},
    {"html", {
        filetypes = { "html", "hbs", "handlebars", "html.handlebars"},
    }},
}

vim.lsp.inlay_hint.enable(true);

for _, lsp in pairs(lsps) do
    local name, config = lsp[1], lsp [2]
    vim.lsp.enable(name)
    if config then
        vim.lsp.config(name, config)
    end
end
