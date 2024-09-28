vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

--{
--    "iamcco/markdown-preview.nvim",
--    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
--    ft = { "markdown" },
--    build = function() vim.fn["mkdp#util#install"]() end,
--},

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)


vim.opt.mouse="a"


-- Add extend selection like Jetbrains Ide
require('nvim-treesitter.configs').setup {
  ensure_installed = { 'bash', 'css', 'html', 'javascript', 'json', 'jsonc', 'lua', 'rust', 'typescript','python','c' },
  highlight = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<C-w>',
      scope_incremental = '<TAB>',
      node_incremental = '<C-w>',
      node_decremental = '<C-S-w>',
    },
  },
}







