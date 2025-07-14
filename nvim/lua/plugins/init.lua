return {
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {
        "lervag/vimtex",
        lazy = false,     -- we don't want to lazy load VimTeX
        init = function()
            -- VimTeX configuration goes here, e.g.
            vim.g.vimtex_view_method = "zathura"
        end
    },
    {
        'hrsh7th/nvim-cmp',
    },
    {'L3MON4D3/LuaSnip'},
    {'nvim-telescope/telescope.nvim'},
    {'nvim-treesitter/nvim-treesitter'},
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
    },
    {
        'nvim-telescope/telescope.nvim',
        keys =
        {
            {'<leader>sw', "<cmd>Telescope live_grep<cr>", desc = "Live grep"},
            {'<leader>sf', "<cmd>Telescope find_files<cr>", desc = "Find file"},
        },
    },
    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            local startify = require("alpha.themes.startify")
            startify.file_icons.provider = "devicons"
            require("alpha").setup(
                startify.config
            )
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    };
}
