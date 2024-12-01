-- Comment is a plugin to comment lines in vim
-- https://github.com/numToStr/Comment.nvim

return {
  'numToStr/Comment.nvim',
  dependencies = {
    'JoosepAlviste/nvim-ts-context-commentstring',
  },
  config = function()
    require('ts_context_commentstring').setup {
      enable_autocmd = false,
    }

    local comment = require 'Comment'
    comment.setup {
      pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
    }

    local ft = require 'Comment.ft'

    ft.set('typescript', { '//%s', '/*%s*/' })
    ft.set('javascript', { '//%s', '/*%s*/' })
    ft.set('typescriptreact', { { '//%s', '{/*%s*/}' }, { '/*%s*/', '{/*%s*/}' } })
    ft.set('javascriptreact', { { '//%s', '{/*%s*/}' }, { '/*%s*/', '{/*%s*/}' } })
  end,
}
