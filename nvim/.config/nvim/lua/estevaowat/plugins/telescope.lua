return {
 'nvim-telescope/telescope.nvim', 
 tag = '0.1.6',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function() 
local builtin = require('telescope.builtin')
vim.keymap.set('n','<leader>ff', builtin.find_files, {})
vim.keymap.set('n','<leader>fg', builtin.git_files, {})
vim.keymap.set('n','<leader>fr', builtin.live_grep, {})
vim.keymap.set('n','<leader>fb', builtin.buffers, {})
vim.keymap.set('n','<leader>fh', builtin.help_tags, {})
vim.keymap.set('n','<leader>fs', function()
    builtin.grep_string({search = vim.fn.input("Grep > ") })
      end    )
  end  }
