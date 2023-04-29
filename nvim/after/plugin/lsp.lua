local lsp = require('lsp-zero').preset({})

lsp.ensure_installed({
  'clangd', -- C/C++
  'jdtls', -- Java
  'rust_analyzer', -- Rust
  'tsserver', -- JavaScript/TypeScript
  'sqlls', -- SQL
  'bashls', -- Bash
  'dockerls', -- Docker
  'gradle_ls', -- Gradle
  'jsonls', -- JSON
  -- 'ltex', -- LaTeX
  'lua_ls', -- Lua
  'marksman', -- Markdown
  'jedi_language_server', -- Python
  'yamlls' -- YAML
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())


-- vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

-- nvim-cmp
-- auto. completion settings
local cmp = require('cmp')
cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = true}),
    -- ['<TAB>'] = cmp.mapping.confirm({select = true}),
    ['<C-Space>'] = cmp.mapping.complete()
  },

  -- sources = {
    -- {
      -- name = 'buffer',
      -- option = {
        -- keyword_pattern = [[\k\+]],
      -- }
    -- },
  -- }

})


lsp.setup()
