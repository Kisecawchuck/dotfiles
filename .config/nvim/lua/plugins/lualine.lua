return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function()
        local line = require('lualine').setup
        line.setup {
            options = { theme = 'catpuccin' },
        }
}
