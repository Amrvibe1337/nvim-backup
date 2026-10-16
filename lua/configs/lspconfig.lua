require("nvchad.configs.lspconfig").defaults()

local servers = {
    "omnisharp",
    "html",
    "cssls",
    "pyright",
    "clangd",
    "bashls",
    "kotlin_language_server",
    "dockerls",
    "docker_compose_language_service",
    "gopls"
}

vim.lsp.enable(servers)


-- Подсветка всех вхождений переменной под курсором
vim.api.nvim_create_autocmd('CursorHold', {
  callback = function()
    vim.lsp.buf.document_highlight()
  end,
})

vim.api.nvim_create_autocmd('CursorMoved', {
  callback = function()
    vim.lsp.buf.clear_references()
  end,
})
-- read :h vim.lsp.config for changing options of lsp servers 
