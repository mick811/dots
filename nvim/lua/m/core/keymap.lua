local map = vim.keymap.set

vim.g.mapleader = " "

map("n", "<leader>ff", function()
    require("telescope.builtin").find_files()
end)
map("n", "<leader>fg", function()
    require("telescope.builtin").live_grep()
end)
map("n", "<leader>fb", function()
    require("telescope.builtin").buffers()
end)
map("n", "<leader>fh", function()
    require("telescope.builtin").help_tags()
end)
map("n", "<leader>e", function()
    require("neo-tree.command").execute({ toggle = true })
end)

local on_attach = function(client, bufnr)
    local opts = { buffer = bufnr, noremap = true, silent = true }

    map("n", "gD", vim.lsp.buf.declaration, opts)
    map("n", "gd", vim.lsp.buf.definition, opts)
    map("n", "K", vim.lsp.buf.hover, opts)
    map("n", "gi", vim.lsp.buf.implementation, opts)
    map("n", "<C-k>", vim.lsp.buf.signature_help, opts)
    map("n", "<leader>D", vim.lsp.buf.type_definition, opts)
    map("n", "<leader>rn", vim.lsp.buf.rename, opts)
    map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    map("n", "gr", vim.lsp.buf.references, opts)
    map("n", "<leader>f", function()
        vim.lsp.buf.format({ async = true })
    end, opts)
end

map("n", "[d", vim.diagnostic.goto_prev, { desc = "prev diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "next diagnostic" })
map("n", "<leader>d", vim.diagnostic.open_float, { desc = "show diagnostic" })
map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "diagnostics to loclist" })

_G.lsp_on_attach = on_attach
