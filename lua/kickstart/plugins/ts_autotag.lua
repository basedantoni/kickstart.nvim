-- TS Autotag is a plugin for using treesitter to autoclose and autorename html tag
-- https://github.com/windwp/nvim-ts-autotag

return {
  'windwp/nvim-ts-autotag',
  ft = {
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
    'html',
  },
  config = function()
    require('nvim-ts-autotag').setup()
  end,
}
