require('colorizer').setup({'css'})

vim.keymap.set('n','<leader>hc', ':ColorizerAttachToBuffer<Enter>')
vim.keymap.set('n','<leader>nhc', ':ColorizerDetachFromBuffer<Enter>')
