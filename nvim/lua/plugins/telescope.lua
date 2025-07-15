return {
    'nvim-telescope/telescope.nvim',
        keys =
        {
            {'<leader>sw', "<cmd>Telescope live_grep<cr>", desc = "Live grep"},
            {'<leader>sf', "<cmd>Telescope find_files<cr>", desc = "Find file"},
        },
    config = function()
        require('telescope').setup({})
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>sw', builtin.grep_string, {})
        vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
    end
}
